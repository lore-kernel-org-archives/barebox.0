Delivery-date: Mon, 17 May 2021 13:30:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1libS5-0002AO-N2
	for lore@lore.pengutronix.de; Mon, 17 May 2021 13:30:25 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1libS3-0003dV-La
	for lore@pengutronix.de; Mon, 17 May 2021 13:30:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:Subject:From:To:
	Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=E+cEoLPnRUPd5ijjplHDM3ToNN6pajf2TqaJoCfHp5s=; b=SQPXQ0ux0jFz6f
	jF6cQmCqQ/2Q5I//21ghIwix+QUjujCr3TZjMzUR+4lrdR9tSO4mfdd2/uGRX1w7RLOdK2afVovcM
	16lN2z85enCbEhynfy1RkJRAOAHGrsNXNdF7OjoK69qqevinZxJCa8CNJXkNEHx0X6sWrkhbHtulp
	MZaT5r8XQjXYyWqCin8aQ00IwL8C0tj7DbFzKNz7KyRNI2cmWxt0ZwXN5RKKXsYGxWP4obd1IUAmf
	w8piLrTYLT0z2oyYTa1GmF1d2uriVal0MhzH0c7UKcgJJOi+BTJF2Yp2i9L1qPiSNTnoYT6FS2fjr
	gTx3x2CfYKISqG4BzfAg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1libR2-00EjSY-7F; Mon, 17 May 2021 11:29:20 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libQr-00EjQy-QP
 for barebox@desiato.infradead.org; Mon, 17 May 2021 11:29:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 Content-Type:MIME-Version:Date:Message-ID:Subject:From:To:Sender:Reply-To:Cc:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=xqdSfWem11ZCcG5AQpQZwNL9v4aGcsmvgiqocXObq6Y=; b=ed/AJC/zoEH1VAYg+GlGeTx7Dr
 Y9FC7VBKSuB4cPHyOuJBCihx9A8xEMYnLVukpRjlCP2i8jrUUsz94+7GluzMvyi1YPc7Prieg72+G
 KPZzu6myN/PWbDxtY/F1Y/c0dNE9+iGYMD0g0HIJAK4MR0vPNjS5zUFCWAaopLnimayDQvBvKEZjx
 cAdDhbcPI4GPS4PFwsAnXQBZZpToUmSZXI/hLWjC7KCFLeeYP/HvQOz0Sduz2GEOeVuS3T2IqVESq
 6kvGbfkJ+or5D6PCGnO6XlKNaiVs/bxyW77DHQeEnPIN0AldC0EA4HrAcw/TMh1qJOwQ5L+CA+1FP
 szdeNh/A==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1libQp-00Dibu-6k
 for barebox@lists.infradead.org; Mon, 17 May 2021 11:29:08 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[127.0.0.1])
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <a.fatoum@pengutronix.de>) id 1libQn-0003Wc-L4
 for barebox@lists.infradead.org; Mon, 17 May 2021 13:29:05 +0200
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <ce838b2e-bcb8-d13b-8c49-7ffee194094a@pengutronix.de>
Date: Mon, 17 May 2021 13:29:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_042907_293615_558F27A1 
X-CRM114-Status: GOOD (  12.46  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [BUG] mtd: cfi-flash: comparison of unsigned expression in '>= 0' is
 always true
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi,

The new warning correctly flags following piece of code in
drivers/mtd/nor/cfi_flash.c:

/* loop through the sectors from the highest address
 * when the passed address is greater or equal to the sector address
 * we have a match
 */
flash_sect_t find_sector(struct flash_info *info, unsigned long addr)
{
        flash_sect_t sector;

        for (sector = info->sector_count - 1; sector >= 0; sector--) {
                if (addr >= info->start[sector])
                        break;
        }

        return sector;
}

If addr is indeed unmapped by info->start[*], this would be an infinite
loop. I don't know what the correct fix would be though. Any suggestions?

Cheers,
Ahmad

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

