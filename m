Delivery-date: Thu, 17 Apr 2025 09:06:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JKB-001mM4-36
	for lore@lore.pengutronix.de;
	Thu, 17 Apr 2025 09:06:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u5JKA-0000Zf-TE
	for lore@pengutronix.de; Thu, 17 Apr 2025 09:06:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Zpt9ANPIlSXVIHTcOhj7vQx8S7OEgTe3jTgm8aspV2E=; b=j056wqXS+boikTjitBpT5tfrHs
	LV+s0QQcpf02O8EnREfD/s0LSaWI7gfcHIt5XAkkG73uoxYD3/R49UWYLRz7ZSXyXsCNUm/yNscXO
	kvZmrK6yAJw5ub6Wuh61SIrT4YzwN8aQPnvXxR2f0FPm7vgDksik1kEAcGdMiBIgBO3e4splrd+vM
	eY07YNNvloFXj/1FRm4ksIKzXjzcCqIeyEmUwNUToXeVwuYhFauFRtZTsR+W68s2c5+MX4pdsSrlk
	JnGAcK8U1/NkuEnf30qzGHo+RSiyiaNvMYxGB2g6aKy6DeDsWAUKpyDBRf3qp1aiDmIM56Z197l9G
	RAQnsuRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JJe-0000000C1WE-0bDH;
	Thu, 17 Apr 2025 07:05:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5JCz-0000000Bzf1-2E27
	for barebox@lists.infradead.org;
	Thu, 17 Apr 2025 06:58:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCy-00068m-2P; Thu, 17 Apr 2025 08:58:48 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-000hvE-2q;
	Thu, 17 Apr 2025 08:58:47 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u5JCx-00Ewsp-2X;
	Thu, 17 Apr 2025 08:58:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 17 Apr 2025 08:58:45 +0200
Message-Id: <20250417065846.3562848-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
References: <20250417065846.3562848-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250416_235849_741134_3467EEC4 
X-CRM114-Status: GOOD (  23.05  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] random: replace all rand/srand API with Xorshift
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Use of the rand/srand API is error prone and trips up static analyzers.
Just drop it and expect users to use random32() instead, which is always
seeded and outputs 32-bit integers directly instead of 16-bit.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/random.rst |  8 ++++----
 commands/2048.c               |  4 ++--
 commands/nandtest.c           | 11 +++++------
 commands/seed.c               |  2 +-
 common/boot.c                 |  2 +-
 common/ubiformat.c            |  4 +---
 drivers/net/phy/dp83tg720.c   |  2 +-
 include/net.h                 |  3 +--
 include/stdlib.h              | 22 +++++-----------------
 lib/random.c                  | 29 +++++++----------------------
 10 files changed, 28 insertions(+), 59 deletions(-)

diff --git a/Documentation/user/random.rst b/Documentation/user/random.rst
index 95dad72e55a7..dc3c32ffeb95 100644
--- a/Documentation/user/random.rst
+++ b/Documentation/user/random.rst
@@ -11,8 +11,8 @@ Barebox provides two types of RNG sources - PRNG and HWRNG:
   (which may include truly random values). Although sequences that are closer to
   truly random can be generated using hardware random number generators."
   Pseudorandom number generator. https://en.wikipedia.org/wiki/Pseudorandom_number_generator (2017.05.08).
-  The PRNG used by Barebox is LCG (linear congruential generator) non cryptographically
-  secure, so please use with caution.
+  The PRNG used by Barebox is a Xorshift* and is not seeded in a manner appropriate
+  for cryptographic operations, so please use with caution.
 
 - The HWRNG framework is software that makes use of a special hardware feature on
   your CPU, SoC or motherboard. It can‘t provide any guarantee about cryptographic
@@ -23,8 +23,8 @@ API
 
 .. code-block:: c
 
-        /* seed the PRNG. */
-        void srand(unsigned int seed);
+        /* mix extra entropy into the PRNG state. */
+        void srand_xor(u64 seed);
 
         /* Fill the buffer with PRNG bits. */
         void get_random_bytes(void *buf, int len);
diff --git a/commands/2048.c b/commands/2048.c
index 3ad9c0f3ae37..c8b35bdb7d0a 100644
--- a/commands/2048.c
+++ b/commands/2048.c
@@ -233,10 +233,10 @@ static void addRandom(uint16_t board[SIZE][SIZE])
 	}
 
 	if (len>0) {
-		r = rand()%len;
+		r = random32()%len;
 		x = list[r][0];
 		y = list[r][1];
-		n = ((rand()%10)/9+1)*2;
+		n = ((random32()%10)/9+1)*2;
 		board[x][y]=n;
 	}
 }
diff --git a/commands/nandtest.c b/commands/nandtest.c
index bc138646a460..fa64d9ccea0b 100644
--- a/commands/nandtest.c
+++ b/commands/nandtest.c
@@ -25,7 +25,8 @@ static struct region_info_user memregion;
 static struct mtd_info_user meminfo;
 static struct mtd_ecc_stats oldstats, newstats;
 
-static int fd, seed;
+static int fd;
+static u64 seed;
 /* Markbad option flag */
 static int markbad;
 
@@ -184,7 +185,7 @@ static int erase_and_write(loff_t ofs, unsigned char *data,
 	 * debugging information. */
 	ret = memcmp(data, rbuf, meminfo.erasesize);
 	if (ret < 0) {
-		printf("\ncompare failed. seed %d\n", seed);
+		printf("\ncompare failed. seed %llu\n", seed);
 		for (i = 0; i < meminfo.erasesize; i++) {
 			if (data[i] != rbuf[i])
 				printf("Block 0x%llx byte 0x%0x (page 0x%x offset 0x%x) is %02x should be %02x\n",
@@ -236,7 +237,7 @@ static int do_nandtest(int argc, char *argv[])
 			markbad = 1;
 			break;
 		case 's':
-			seed = simple_strtoul(optarg, NULL, 0);
+			seed = simple_strtoull(optarg, NULL, 0);
 			break;
 		case 'i':
 			nr_iterations = simple_strtoul(optarg, NULL, 0);
@@ -352,8 +353,6 @@ static int do_nandtest(int argc, char *argv[])
 				test_ofs < flash_end;
 				test_ofs += meminfo.erasesize) {
 			pb_update(test_ofs);
-			srand(seed);
-			seed = rand();
 
 			if (ioctl(fd, MEMGETBADBLOCK, &test_ofs)) {
 				printf("\nBad block at 0x%08llx\n",
@@ -364,7 +363,7 @@ static int do_nandtest(int argc, char *argv[])
 			if (do_nandtest_ro) {
 				ret = read_corrected(test_ofs, rbuf, length);
 			} else {
-				get_random_bytes(wbuf, meminfo.erasesize);
+				randbuf_r(&seed, wbuf, meminfo.erasesize);
 				ret = erase_and_write(test_ofs, wbuf,
 						rbuf, length);
 			}
diff --git a/commands/seed.c b/commands/seed.c
index 3947208834ff..3495fab1fd27 100644
--- a/commands/seed.c
+++ b/commands/seed.c
@@ -12,7 +12,7 @@ static int do_seed(int argc, char *argv[])
 		return COMMAND_ERROR_USAGE;
 
 	if (isdigit(*argv[1])) {
-		srand(simple_strtoul(argv[1], NULL, 0));
+		srand_xor(simple_strtoull(argv[1], NULL, 0));
 		return 0;
 	}
 
diff --git a/common/boot.c b/common/boot.c
index 6aa2b1394961..e1844c470888 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -360,7 +360,7 @@ static char *parse_nfs_url(const char *url)
 		mountpath = xstrdup(prevpath);
 	} else {
 		mountpath = basprintf("/mnt/nfs-%s-bootentries-%08x", host,
-					rand());
+					random32());
 		if (port)
 			options = basprintf("mountport=%s,port=%s", port,
 					      port);
diff --git a/common/ubiformat.c b/common/ubiformat.c
index d8399ad9d6a0..c9256983b501 100644
--- a/common/ubiformat.c
+++ b/common/ubiformat.c
@@ -488,10 +488,8 @@ int ubiformat(struct mtd_info *mtd, struct ubiformat_args *args)
 	if (!args->ubi_ver)
 		args->ubi_ver = 1;
 
-	if (!args->image_seq) {
-		srand(get_time_ns());
+	if (!args->image_seq)
 		args->image_seq = random32();
-	}
 
 	if (!is_power_of_2(mtd->writesize)) {
 		errmsg("min. I/O size is %d, but should be power of 2",
diff --git a/drivers/net/phy/dp83tg720.c b/drivers/net/phy/dp83tg720.c
index a9e5560adc85..0e02f714fea7 100644
--- a/drivers/net/phy/dp83tg720.c
+++ b/drivers/net/phy/dp83tg720.c
@@ -81,7 +81,7 @@ static int dp83tg720_phy_init(struct phy_device *phydev)
 	 * the link partner.  The polling interval is set to 150ms +/- 50ms.
 	 */
 	phydev->polling_interval = (DP83TG720S_POLL_TIMEOUT_MS +
-				    (rand() % 10) * 10) * MSECOND;
+				    prandom_u32_max(100)) * MSECOND;
 
 	/* According to the "DP83TG720R-Q1 1000BASE-T1 Automotive Ethernet PHY
 	 * datasheet (Rev. C)" - "T6.2 Post reset stabilization-time prior to
diff --git a/include/net.h b/include/net.h
index 52f6a0fa97ad..439e0a4c9b61 100644
--- a/include/net.h
+++ b/include/net.h
@@ -423,8 +423,7 @@ int generate_ether_addr(u8 *addr, int ethid);
  */
 static inline void random_ether_addr(u8 *addr)
 {
-	srand(get_time_ns());
-	get_random_bytes(addr, ETH_ALEN);
+	get_noncrypto_bytes(addr, ETH_ALEN);
 	addr[0] &= 0xfe;	/* clear multicast bit */
 	addr[0] |= 0x02;	/* set local assignment bit (IEEE802) */
 }
diff --git a/include/stdlib.h b/include/stdlib.h
index 12a81cfc31a3..36613eb34a99 100644
--- a/include/stdlib.h
+++ b/include/stdlib.h
@@ -6,20 +6,13 @@
 #include <types.h>
 #include <malloc.h>
 
-#define RAND_MAX 32767
-
-/* return a pseudo-random integer in the range [0, RAND_MAX] */
-unsigned int rand(void);
-
-/* set the seed for rand () */
-void srand(unsigned int seed);
-
 struct hwrng;
 
 /* fill a buffer with pseudo-random data */
 #if IN_PROPER
 void randbuf_r(u64 *x, void *buf, size_t len);
 void srand_xor(u64 entropy);
+u32 random32(void);
 void get_noncrypto_bytes(void *buf, size_t len);
 void get_random_bytes(void *buf, int len);
 int get_crypto_bytes(void *buf, int len);
@@ -33,6 +26,10 @@ static inline void srand_xor(u64 entropy)
 {
 	BUG();
 }
+static inline u32 random32(void)
+{
+	BUG();
+}
 static inline void get_noncrypto_bytes(void *buf, size_t len)
 {
 	BUG();
@@ -51,15 +48,6 @@ static inline int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
 }
 #endif
 
-static inline u32 random32(void)
-{
-	u32 ret;
-
-	get_random_bytes(&ret, 4);
-
-	return ret;
-}
-
 static inline u32 prandom_u32_max(u32 ep_ro)
 {
 	return (u32)(((u64) random32() * ep_ro) >> 32);
diff --git a/lib/random.c b/lib/random.c
index 51c68dcd427b..36fb1ec08f05 100644
--- a/lib/random.c
+++ b/lib/random.c
@@ -15,23 +15,6 @@
 #include <stdlib.h>
 #include <linux/hw_random.h>
 
-static unsigned int random_seed;
-
-#if RAND_MAX > 32767
-#error this rand implementation is for RAND_MAX < 32678 only.
-#endif
-
-unsigned int rand(void)
-{
-	random_seed = random_seed * 1103515245 + 12345;
-	return (random_seed / 65536) % (RAND_MAX + 1);
-}
-
-void srand(unsigned int seed)
-{
-	random_seed = seed;
-}
-
 static u64 prng_state = 1;
 
 /**
@@ -113,17 +96,19 @@ void get_noncrypto_bytes(void *buf, size_t len)
 	randbuf_r(&prng_state, buf, len);
 }
 
+u32 random32(void)
+{
+	return rand_r(&prng_state);
+}
+
 /**
  * get_random_bytes - get pseudo random numbers.
  * This interface can be good enough to generate MAC address
  * or use for NAND test.
  */
-void get_random_bytes(void *_buf, int len)
+void get_random_bytes(void *buf, int len)
 {
-	char *buf = _buf;
-
-	while (len--)
-		*buf++ = rand() % 256;
+	get_noncrypto_bytes(buf, len);
 }
 
 int hwrng_get_crypto_bytes(struct hwrng *rng, void *buf, int len)
-- 
2.39.5



