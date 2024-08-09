'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"flutter_bootstrap.js": "9ddf1a7769b1d7108c5601ebed801d4d",
"version.json": "9e1efd4735fb681eef211e45bb73d9d6",
"index.html": "824769f26d12b1e81dc37b4acc3575ef",
"/": "824769f26d12b1e81dc37b4acc3575ef",
"main.dart.js": "84b638b2257020ff951a067e6400dfb2",
"flutter.js": "f393d3c16b631f36852323de8e583132",
"favicon.png": "6b650c4cdd49dfc011ad87216a2f19f3",
"yannble.png": "4f8dd70faa8fa70d0d9d73c1d6917771",
"icons/favicon.ico": "13a88d2b5badfff611cb88e2ebfa642e",
"icons/Icon-192.png": "4f8dd70faa8fa70d0d9d73c1d6917771",
"icons/Icon-maskable-192.png": "143467794993b38c03979ccb1a6a1d97",
"icons/Icon-maskable-512.png": "74c0a0182cf1ac7bcb2e5f4fcc42c4ff",
"icons/Icon-512.png": "41b2bbb632fca4fc7d90d6d177642305",
"manifest.json": "ddb3a5a35d0c473c5ab6b4302028f958",
".git/config": "7ab89eec2abd2f392f83680048d9fbff",
".git/objects/0d/2c5a6cb830c64dc0f685ac93dddf0e2a18e592": "44dd3b6c9582679714ac24ae6bcb3c78",
".git/objects/03/47b1002d81a52525f76a9d2b9ce37cd476ace7": "1ce1aae36987bcb4c33d933e65c30ed0",
".git/objects/04/e7eb9bb12a63b1601e76a6811e7615cd758a49": "dc7c055eed07b8c8a91c49948715b4e7",
".git/objects/35/f59c4ac56743405fc490ef3d77de3c7fc272b7": "810ed03757f2913fbb90aff56cc1cb66",
".git/objects/3d/8989a2a12e0fab17ab2cd0766ad1874ed2a589": "0929de7bd35902e20ae854686e8c36aa",
".git/objects/0e/3f1d694a9f8be444c93751ca3de17b8f7ffd85": "30b501c9c7c5997293256d453fdbe86f",
".git/objects/9d/ed6592e95436d00b0e791511b9b52a111f98d3": "21d1725049bd27c4f91404ce0eafc712",
".git/objects/a3/a4ab7862aec81e4f07b9ea8c945adec4e01362": "bdcbe1ef491e12a51bf317d06e5a71b4",
".git/objects/ac/3dbcca52002ee1da077dc55aecd322a5e232d9": "892f0fda2829b19a3c611f2a25288140",
".git/objects/d7/2e0a0b2e65927927b4f46380459e26c121c83e": "c01847ecea8067fd6eae4d33036c5070",
".git/objects/d0/23371979cf1e985205df19078051c10de0a82d": "700b71074bad7afee32068791dec7442",
".git/objects/da/fd65422747502c19b5c74b4230282644d2169c": "d8a62caf99a372ff6c7692e143787ce3",
".git/objects/da/7c4658fc5e281527d57ea2a8a1f1c1f7f706e8": "23fe0347b9da4bbcccb83a0bc9928d26",
".git/objects/d6/5b45cdc6ae5937c0c6a184bf8b08cfc485ba4f": "183ed56919bb733d8c91ba5e90dede35",
".git/objects/d6/9c56691fbdb0b7efa65097c7cc1edac12a6d3e": "868ce37a3a78b0606713733248a2f579",
".git/objects/d6/72b2439b6ae0ef4584737e52df2b89e4caf340": "5442cd113d5458310cc6610873b6070d",
".git/objects/eb/9b4d76e525556d5d89141648c724331630325d": "37c0954235cbe27c4d93e74fe9a578ef",
".git/objects/f2/04823a42f2d890f945f70d88b8e2d921c6ae26": "6b47f314ffc35cf6a1ced3208ecc857d",
".git/objects/f5/f03963fa4b5a166e8e2a19d5477b9e57336e5b": "1f78c953bdd2d7e4d44a72e4d31d6114",
".git/objects/cf/4468bbe27c2acbf73498b7bbd2a526d182ea67": "58ec9deae9bd455b2053979a7b76f1c3",
".git/objects/c6/dba31c8d7e301b4f236f16fd18f4a4fa07fe64": "773e3c050c7ec512c2ca484e2b3db604",
".git/objects/c6/9b558d824853c44a3aa0d1290a9b436504c95a": "6ebb671911d4277f4c7ace53c0f46aaf",
".git/objects/18/408fa9887ea82e08a87b68d4fc273ab680807c": "0046e8034e90d0caa76548aec5d764d1",
".git/objects/4b/33d26cc3ec31ff54a1f30c836e3f0658e4d1a8": "d6f831325d03af585ab4b07a54e4c266",
".git/objects/11/c7f67a16504b30b37d760877d73fbfa4bea692": "f9168c044a7498a76b0fa514b74cdce9",
".git/objects/16/2818a80bf032d7cb94f393988380c568fc4a57": "0d3aaa210a0aa06df99a0a966c86315a",
".git/objects/1f/0daf12e22beded0cc2829708953ae7cadfd04f": "efbb097ed88132e7b5d58fd4920248f4",
".git/objects/1f/45b5bcaac804825befd9117111e700e8fcb782": "7a9d811fd6ce7c7455466153561fb479",
".git/objects/1a/b7809b36db799a155e5b80423cadf55f806767": "62291874b10954622bcebac83422cd3c",
".git/objects/8a/aa46ac1ae21512746f852a42ba87e4165dfdd1": "1d8820d345e38b30de033aa4b5a23e7b",
".git/objects/19/f4a31d0c16cbef4bab55104a3b42fd44b717e6": "aae23010c476fe96bfc29f404a6afd03",
".git/objects/72/3fe612e3fd398acf7e1e33b5b435d5f6ad911b": "9e3ab83e202d05af4fabe03da761e895",
".git/objects/44/a8b8e41b111fcf913a963e318b98e7f6976886": "5014fdb68f6b941b7c134a717a3a2bc6",
".git/objects/2a/86087a484227e0cb41c9176cbfb0d1a3629240": "2ac39f69e5d44d5f6ca77e0138521b77",
".git/objects/88/cfd48dff1169879ba46840804b412fe02fefd6": "e42aaae6a4cbfbc9f6326f1fa9e3380c",
".git/objects/88/78a8088c4df9624cb449954bf4654bbe7f4fa1": "97557d301030d1e2ff821d25ad4239bf",
".git/objects/9f/729abcedd69c6063f4a7bf414b9e47442d5d28": "45df0fe2b8824f23486c6e2441e87a8e",
".git/objects/6b/c9cf32692d86948253dbccfa0dab7fa9a1361f": "feff70aa0eaded1dfdf5cb1d86d12140",
".git/objects/07/f8fd76c10af99ebb118f6424658f2230c4827d": "637c86c5e76efc9ac657bfbe8555747a",
".git/objects/00/bbe53d526d5b7f2df72a45449689fffe3a0cae": "9b4941f1a7ef87ce52e7c0ce10a91f1f",
".git/objects/91/35ba1645edf896bcf6df5666c8b94aff08c4d6": "98870e2aec56d00f791265dbee20ec3e",
".git/objects/98/19e507eda99463622f9a676d20c8b4723980ff": "9c299df53254ca4ed20e5ed6476d383e",
".git/objects/3f/4d8610a05c23297cd195290e6fd92c874c5097": "88e164560f673ef5835b095ed98b3144",
".git/objects/08/309a0b02dff92236495cb4cde80c9585f9762e": "e42d7c89e9405f3b93f7b6a6400de0d0",
".git/objects/08/32d0db2def1613c1c45aa4fe9156a1c6b7d589": "e05df183e5eeaddf39672a2516f9c41d",
".git/objects/6d/d09187b87c0305fef6caf97a4bccc8a0185d1e": "a76795418a1b3bfb5b71337bba572f46",
".git/objects/01/90b42b8e0909cee49c8f9a3b696e948bbe8662": "71d37d965d85e4d23d7925a61a086925",
".git/objects/01/f5625e7fd3bbd573206e25c40833d088717c4a": "4bc392885b751d4a586cf3000a95da8c",
".git/objects/0f/b67b7eafbb9250c24a6fa98f97079ea774979c": "7a2bdb41c983168cabe8460533c4ae05",
".git/objects/0a/610e57e2934a1b84dc6c98ecc81ef312af6d1a": "f3cff15eb2e8567de51d026f30fe7ab7",
".git/objects/90/a7ab3e1c0ef543b1d9187f72313b76ce7ec741": "af488811115d3d5889d1897596e79ef0",
".git/objects/d4/3532a2348cc9c26053ddb5802f0e5d4b8abc05": "3dad9b209346b1723bb2cc68e7e42a44",
".git/objects/ba/5317db6066f0f7cfe94eec93dc654820ce848c": "9b7629bf1180798cf66df4142eb19a4e",
".git/objects/b1/5ad935a6a00c2433c7fadad53602c1d0324365": "8f96f41fe1f2721c9e97d75caa004410",
".git/objects/dc/acfa6ed9dae28a76762b290f4b3aa63f9d928f": "a841986d0191222734a24cedf1aa0e8e",
".git/objects/b6/d4fa247fc6c4429c7c1d3a3eb802bff852ceef": "3d99d26a5a57570fec9940cf84762c29",
".git/objects/b7/49bfef07473333cf1dd31e9eed89862a5d52aa": "36b4020dca303986cad10924774fb5dc",
".git/objects/db/c1b495d491389e285da5d409d3783c5d94c4d8": "d58722fb2bc24e4ac3dddb3c1efe8cdb",
".git/objects/b9/2a0d854da9a8f73216c4a0ef07a0f0a44e4373": "f62d1eb7f51165e2a6d2ef1921f976f3",
".git/objects/a1/906db97d3dbf7a794931872d1d1a5b7d2e03db": "8d49c53258c62a7c1431cfb9b087d9bf",
".git/objects/c3/d10662b56202574797f7bf6c2cd0ec83d8a7bf": "b30caf506260a089971297ed12485c8b",
".git/objects/e6/2764fb7e232b1f6d79e8520c018fe1944aa42e": "4db12d28d83a4aaf47ae91a419fffe1b",
".git/objects/e8/59585458d9cff733380e2076cf44902136f364": "15c9d4996d17644cef41b94355fce7ad",
".git/objects/e7/8ea34f8953efbc03d7e39510d239c788ba3275": "a1cb09077766eb1509513fc086af5cf8",
".git/objects/e7/e3868fa028fbcbd288574f24425e9822f5ea62": "f34093f17eb1d08e9b1e9bc7fb2fba2e",
".git/objects/46/4ab5882a2234c39b1a4dbad5feba0954478155": "2e52a767dc04391de7b4d0beb32e7fc4",
".git/objects/79/0459dcb7f9e15ea19f8603e08e7c1bb51d1691": "e3120c49a722a9e47e4d447330580e18",
".git/objects/83/a22fd6a4d9b3ddc66081249baebff6f055efcb": "0a53ff8c6f7f66ae350f64095e07bfb2",
".git/objects/48/54578ef0f5eabef25b0025d8719d2f5fec7327": "5068278592bf7f01368234916cca175e",
".git/objects/70/597df692e0c0953972a61583c83900ab24df8e": "638971e9e67ec17379a1cf3edb2e8677",
".git/objects/4a/07ed6babbac0d76e336ccef336933aa63e2946": "abe9595c7fa1f8829e67b9b412cd0d2e",
".git/objects/15/c4911f78061134f607db1e6acbf02d57cc424c": "95335d1372f4d27b2a9c2e65bb008dc8",
".git/objects/85/6a39233232244ba2497a38bdd13b2f0db12c82": "eef4643a9711cce94f555ae60fecd388",
".git/objects/1d/d6e9751f0e321791d7a83d09bc07b40e04f7d3": "2cdba3b15adb187ec45cd1d6f9134aa6",
".git/objects/82/e8bcff6075e5b02aa7d493e4b6bb9e061182e6": "bec948bcb1c8e8d7a374b2b5ee8745e6",
".git/objects/7f/8a3c71a791075adda12163fcd3a6a1e03164e0": "8736ca3d33a56ead38fc8a09c7d58e52",
".git/objects/8e/f721f040810178bfdbae52babf1431ead3730b": "643f8338d2e7ef44b70cf15581f0c446",
".git/objects/22/b9d0ee85b749d89b07914ec69c320eeb7e721e": "e1ea85b7446d43a8f423b9034f8689b3",
".git/objects/22/97669b497faaab962ec6764c917053d2309dbe": "643b9f769ae6341b0059b9d4c65e0555",
".git/objects/25/8b3eee70f98b2ece403869d9fe41ff8d32b7e1": "05e38b9242f2ece7b4208c191bc7b258",
".git/objects/25/3c5c01ca52878cc98739bde910bf8ae066e9f1": "0618454d68a9c40bdbc6d231bf94ea59",
".git/HEAD": "cf7dd3ce51958c5f13fece957cc417fb",
".git/info/exclude": "036208b4a1ab4a235d75c181e685e5a3",
".git/logs/HEAD": "3e19a453b30bbc88a9e363a42bfcf5f3",
".git/logs/refs/heads/main": "986d058b58c04ab3e20a35b2771fd33e",
".git/logs/refs/remotes/origin/main": "1c1ad5c644e94762ee1b0e436816a722",
".git/description": "a0a7c3fff21f2aea3cfa1d0316dd816c",
".git/hooks/commit-msg.sample": "579a3c1e12a1e74a98169175fb913012",
".git/hooks/pre-rebase.sample": "56e45f2bcbc8226d2b4200f7c46371bf",
".git/hooks/sendemail-validate.sample": "4d67df3a8d5c98cb8565c07e42be0b04",
".git/hooks/pre-commit.sample": "5029bfab85b1c39281aa9697379ea444",
".git/hooks/applypatch-msg.sample": "ce562e08d8098926a3862fc6e7905199",
".git/hooks/fsmonitor-watchman.sample": "a0b2633a2c8e97501610bd3f73da66fc",
".git/hooks/pre-receive.sample": "2ad18ec82c20af7b5926ed9cea6aeedd",
".git/hooks/prepare-commit-msg.sample": "2b5c047bdb474555e1787db32b2d2fc5",
".git/hooks/post-update.sample": "2b7ea5cee3c49ff53d41e00785eb974c",
".git/hooks/pre-merge-commit.sample": "39cb268e2a85d436b9eb6f47614c3cbc",
".git/hooks/pre-applypatch.sample": "054f9ffb8bfe04a599751cc757226dda",
".git/hooks/pre-push.sample": "2c642152299a94e05ea26eae11993b13",
".git/hooks/update.sample": "647ae13c682f7827c22f5fc08a03674e",
".git/hooks/push-to-checkout.sample": "c7ab00c7784efeadad3ae9b228d4b4db",
".git/refs/heads/main": "b66815c7954a3db2b4e401f7006872b1",
".git/refs/remotes/origin/main": "e79735db755cbe609383c2f8fbf1e933",
".git/index": "1df1ce34042c0b99abef073d5cc79769",
".git/COMMIT_EDITMSG": "1989fed1840617fa8159f1ba566af15c",
".git/FETCH_HEAD": "57b33b51b2d010d60a93e5d66fa6bff8",
"assets/AssetManifest.json": "b292f843079b77a7bac179f4080d5253",
"assets/NOTICES": "90a91c5ccaffe1482b7a731dffdcd9b9",
"assets/FontManifest.json": "dc3d03800ccca4601324923c0b1d6d57",
"assets/AssetManifest.bin.json": "5ddc8df8fe0e297a6fe8bab06e8be47e",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "e986ebe42ef785b27164c36a9abc7818",
"assets/shaders/ink_sparkle.frag": "ecc85a2e95f5e9f53123dcaf8cb9b6ce",
"assets/AssetManifest.bin": "af95b214f81f72678b9d7ba4d522268a",
"assets/fonts/MaterialIcons-Regular.otf": "df4df36025cbc65936994cf4d60382d8",
"assets/assets/pics/pic1.png": "ed8a962516b402b95cac04c7849786e7",
"assets/assets/pics/pic2.png": "94a27c9ced7c4231733ca5c8bc05246e",
"assets/assets/pics/pic_f.png": "5856cecea7c5c37c62769d410235dabe",
"assets/assets/pics/pic.png": "af60b5088b9562d10b9dcbc6ed662d6d",
"canvaskit/skwasm.js": "694fda5704053957c2594de355805228",
"canvaskit/skwasm.js.symbols": "07d1cc991d9e350f595f8c1c213bc5d7",
"canvaskit/canvaskit.js.symbols": "8d1bd5cff406d02f11e3df1b7f231069",
"canvaskit/skwasm.wasm": "3a9f6a4ac1614369f188c0caa93122f4",
"canvaskit/chromium/canvaskit.js.symbols": "173d584980c3dd230b358fcd5eec12c1",
"canvaskit/chromium/canvaskit.js": "671c6b4f8fcc199dcc551c7bb125f239",
"canvaskit/chromium/canvaskit.wasm": "73d32c2ea06c7c9d9fc4f2df1b8c8eeb",
"canvaskit/canvaskit.js": "66177750aff65a66cb07bb44b8c6422b",
"canvaskit/canvaskit.wasm": "e7cf3ec5207fca3cc66003059fbe2dc8",
"canvaskit/skwasm.worker.js": "89990e8c92bcb123999aa81f7e203b1c"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"flutter_bootstrap.js",
"assets/AssetManifest.bin.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
