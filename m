Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.tricorecenter.de ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dJJyd-0000C7-HE
 for barebox@lists.infradead.org; Fri, 09 Jun 2017 13:29:25 +0000
References: <1496765425-9702-1-git-send-email-d.schultz@phytec.de>
 <20170607064508.lau5rlqb5k6hslf3@pengutronix.de>
 <20170607064909.rw2aa6atbrb37xmt@pengutronix.de>
 <20170607065336.utyv5z72fivph2ha@pengutronix.de>
 <23fe6b1a-f4af-40e0-a796-51464027b251@phytec.de>
 <20170609090830.cgid2zfz2cufjqq5@pengutronix.de>
From: Daniel Schultz <d.schultz@phytec.de>
Message-ID: <8697fc1c-f5dc-c29a-3c22-320cacc77ede@phytec.de>
Date: Fri, 9 Jun 2017 15:28:59 +0200
MIME-Version: 1.0
In-Reply-To: <20170609090830.cgid2zfz2cufjqq5@pengutronix.de>
Content-Language: en-US
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] mtd: nand: omap: Fix BCH bit correction
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>

Hi,

Am 09.06.2017 um 11:08 schrieb Sascha Hauer:
> On Fri, Jun 09, 2017 at 10:17:55AM +0200, Daniel Schultz wrote:
>> Hi Sascha,
>>
>>>>
>>>> And can not work. Additionally eccsteps must be set to 1 in
>>>> omap_correct_bch(). This effectively makes the loop in this function
>>>> unnecessary which can then removed.
>>>
>>> Which then means omap_gpmc_read_page_bch_rom_mode() has to iterate over
>>> ecc.steps itself, just like the other read_page implementations in the
>>> framework do.
>>>
>> So, the previous assignment of eccsteps was fine?
> 
> I just sent an updated patch(-series). Could you give it a try?
> 
It works, but the current version only changes the local copy of the 
pointer. As a result of that it will only check the first 512 Bytes.
I appended a double pointer workaround for this problem :)


omap_correct_data() also calls omap_correct_bch(). Does Barebox correct 
NAND partitions? I have never seen this. Maybe we need here also a loop.



 From 2b104598933b00cd33a85333ce72a49de7230507 Mon Sep 17 00:00:00 2001
From: Daniel Schultz <d.schultz@phytec.de>
Date: Fri, 9 Jun 2017 15:15:30 +0200
Subject: [PATCH] Add double pointer to current OMAP NAND ECC patch stack

Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
---
  drivers/mtd/nand/nand_omap_gpmc.c | 24 ++++++++++++------------
  1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/mtd/nand/nand_omap_gpmc.c 
b/drivers/mtd/nand/nand_omap_gpmc.c
index 334014a..7608545 100644
--- a/drivers/mtd/nand/nand_omap_gpmc.c
+++ b/drivers/mtd/nand/nand_omap_gpmc.c
@@ -292,8 +292,8 @@ static int omap_calculate_ecc(struct mtd_info *mtd, 
const uint8_t *dat,
  	return __omap_calculate_ecc(mtd, dat, ecc_code, 0);
  }

-static int omap_correct_bch(struct mtd_info *mtd, uint8_t *dat,
-			     uint8_t *read_ecc, uint8_t *calc_ecc)
+static int omap_correct_bch(struct mtd_info *mtd, uint8_t **dat,
+			     uint8_t **read_ecc, uint8_t **calc_ecc)
  {
  	struct nand_chip *nand = (struct nand_chip *)(mtd->priv);
  	struct gpmc_nand_info *oinfo = (struct gpmc_nand_info *)(nand->priv);
@@ -328,14 +328,14 @@ static int omap_correct_bch(struct mtd_info *mtd, 
uint8_t *dat,

  	/* check for any ecc error */
  	for (j = 0; (j < actual_eccsize) && (eccflag == 0); j++) {
-		if (calc_ecc[j] != 0) {
+		if ((*calc_ecc)[j] != 0) {
  			eccflag = 1;
  			break;
  		}
  	}

  	if (eccflag == 1) {
-		if (memcmp(calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
+		if (memcmp(*calc_ecc, erased_ecc_vec, actual_eccsize) == 0) {
  			/*
  			 * calc_ecc[] matches pattern for ECC
  			 * (all 0xff) so this is definitely
@@ -343,7 +343,7 @@ static int omap_correct_bch(struct mtd_info *mtd, 
uint8_t *dat,
  			 */
  		} else {
  			bitflip_count = nand_check_erased_ecc_chunk(
-					dat, oinfo->nand.ecc.size, read_ecc,
+					*dat, oinfo->nand.ecc.size, *read_ecc,
  					eccsize, NULL, 0, bch_max_err);
  			if (bitflip_count < 0)
  				is_error_reported = true;
@@ -352,22 +352,22 @@ static int omap_correct_bch(struct mtd_info *mtd, 
uint8_t *dat,

  	if (is_error_reported) {
  		bitflip_count = omap_gpmc_decode_bch(1,
-				calc_ecc, err_loc);
+				*calc_ecc, err_loc);
  		if (bitflip_count < 0)
  			return bitflip_count;

  		for (j = 0; j < bitflip_count; j++) {
  			if (err_loc[j] < 4096)
-				dat[err_loc[j] >> 3] ^=
+				(*dat)[err_loc[j] >> 3] ^=
  					1 << (err_loc[j] & 7);
  			/* else, not interested to correct ecc */
  		}
  	}

  	totalcount += bitflip_count;
-	calc_ecc = calc_ecc + actual_eccsize;
-	read_ecc = read_ecc + eccsize;
-	dat += 512;
+	*calc_ecc += actual_eccsize;
+	*read_ecc += eccsize;
+	*dat += 512;

  	return totalcount;
  }
@@ -449,7 +449,7 @@ static int omap_correct_data(struct mtd_info *mtd, 
uint8_t *dat,
  		 * this time with oob data.
  		 */
  		__omap_calculate_ecc(mtd, dat, calc_ecc, 0);
-		return omap_correct_bch(mtd, dat, read_ecc, calc_ecc);
+		return omap_correct_bch(mtd, &dat, &read_ecc, &calc_ecc);
  	default:
  		return -EINVAL;
  	}
@@ -705,7 +705,7 @@ static int omap_gpmc_read_page_bch_rom_mode(struct 
mtd_info *mtd,
  	__omap_calculate_ecc(mtd, buf, ecc_calc, 1);

  	for (i = 0; eccsteps; eccsteps--, i += eccbytes, p += eccsize) {
-		stat = omap_correct_bch(mtd, buf, ecc_code, ecc_calc);
+		stat = omap_correct_bch(mtd, &buf, &ecc_code, &ecc_calc);
  		if (stat < 0) {
  			mtd->ecc_stats.failed++;
  		} else {
-- 
1.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
