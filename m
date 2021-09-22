Delivery-date: Wed, 22 Sep 2021 08:59:21 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDx-0005Mf-MK
	for lore@lore.pengutronix.de; Wed, 22 Sep 2021 08:59:21 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mSwDv-0003RO-I5
	for lore@pengutronix.de; Wed, 22 Sep 2021 08:59:21 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KJSF1NzHPx7EpP1Am6jbiyNpSKYptComshKVWnDTYnk=; b=kPrulMzt4dgGZ8
	77wmiesUxWxEw3UMN38fSUhlBwlShyCp+bHwk1/R/PVSscAbQLyCDX3mHPLK20dZpyaQqqGx0EOub
	k6x//rffBDLODzPnfYdtzu4ynODQbmjLMRS5BxEQu7Gz8DJc97o2bDgmuhjN9/Nf7RI/d72vi22LS
	cAi0iGT+CqkglD8365b9XQDnG/S1KhvegvzDuZF79VWb7QPEZDc1KdEkQA2v9MRElLvne9bpLXgIl
	uN6JlQv2D8N6Nhmyvbflvwaqsp6v6xrpX3MqF2tmKJgUgIH2Rxw9c9fSrIHG/PM1jw1pXRLE3b+qW
	PvmkQjyno/jPj7/aVOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mSwCK-007BpW-8C; Wed, 22 Sep 2021 06:57:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mSw5e-0079oQ-7D
 for barebox@lists.infradead.org; Wed, 22 Sep 2021 06:50:48 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0002AN-Of; Wed, 22 Sep 2021 08:50:28 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mSw5M-0005Yk-9P; Wed, 22 Sep 2021 08:50:28 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Peter Rosin <peda@axentia.se>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Sep 2021 08:49:57 +0200
Message-Id: <20210922065000.20970-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210922065000.20970-1-a.fatoum@pengutronix.de>
References: <20210922065000.20970-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210921_235046_332402_54BB4D54 
X-CRM114-Status: GOOD (  13.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/5] fs: fat: pbl: support >32M alignment for first
 partition
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The LBA of the first absolute sector in a partition is a 32-bit
field at offset 0x8 of a partition entry. The first such partition
entry is at offset 446 of the MBR.

The DOS partition parser adheres to this scheme, but the FAT code
contains a very basic partition parser as well that kicks in when
a disk couldn't be mounted as FAT: It will seek to the first FAT
partition in a MBR and mount that. This only happens with FAT PBL,
because in barebox proper, we use the actual partition parser.

The partition parser in FAT assumed starting LBA to be a 16-bit
value and thus failed to load a first FAT partition located more
than 0x10000 sectors into the image. Fix this.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/filetype.c b/common/filetype.c
index 9edebb2cd831..8ffcd6adcd09 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -218,7 +218,7 @@ enum filetype is_fat_or_mbr(const unsigned char *sector, unsigned long *bootsec)
 		 * first partition so we could check if there is a FAT boot
 		 * sector there
 		 */
-		*bootsec = get_unaligned_le16(&sector[MBR_Table + MBR_StartSector]);
+		*bootsec = get_unaligned_le32(&sector[MBR_Table + MBR_StartSector]);
 
 	return filetype_mbr;
 }
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

