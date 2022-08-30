Delivery-date: Tue, 30 Aug 2022 09:44:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvR-001URz-8O
	for lore@lore.pengutronix.de; Tue, 30 Aug 2022 09:44:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oSvvO-0004aC-28
	for lore@pengutronix.de; Tue, 30 Aug 2022 09:44:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=v4RCxUFNDpcnnBOeTUFINTBnVkmUh6snpPR2iII7ue4=; b=oNC++ujhVBGAsb3MwT24Nvjib1
	GVCxq6p3RVTiRWWrHacj3uF5GVMdVaiUFOfSg0C6VMNVzOFYtG3/tpRu53GVmx3GHoO5RcK/wrWu8
	ch/1zPi6IZQk09c+UKPUz4PpEIsZ9lyGQHDZZIUVxYF76vOSheRIoXnlbyY8Pb9Ddc/nCv7erZACQ
	0/eKSqI3NGgunQ7lqM8MH1DlvhEwrO6ra+WY4HlH9KG+Np7V117Zms09A062pGBhEQKmU1WsXoQIm
	9X/ujd0ebuCqyp+Vw6BLKt0U8RQF2A7hnXbxlhCdu4YX0PDbrXlNLcSKqiMORCW9iFeBurJeL/lfh
	hcizncLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvtg-00Er0F-Q6; Tue, 30 Aug 2022 07:42:59 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqM-00EpWR-2o
	for barebox@bombadil.infradead.org; Tue, 30 Aug 2022 07:39:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description;
	bh=v4RCxUFNDpcnnBOeTUFINTBnVkmUh6snpPR2iII7ue4=; b=Y3lE5RYQSyijYhXa35px4PP+0T
	2Z9IAOZMxfZhQIPhAT4FqYltRa4XlBKE3llktri0XheQqKynjRNnTyFaoPMBbrhL6N2RNKSMKFerq
	juMYAeHcplAEJCQG/7a6EmD3AVR4ALdE9Elwr8BezjqmGSI3iicKgj76AyW78O+/qr4hX5FN6Axa0
	95eaT6Bv34z+fCKKt7/IN1MZPynuM9U+mI3GUcLGGBoKZcfyJCA+pfzY/6W8IW4Rouq4ZjpWvJlQz
	mwdy8Jp0rwER2LZYoamDEe0T2MoDkkjEtfgQDOFDxcB8FbX4wfQT9LlDrw8/dIP3Dcj15YgotZ/HW
	L8wn1oPA==;
Received: from smtpout-2.cvg.de ([2003:49:a034:1067:5::2])
	by desiato.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oSvqC-007m5z-3H
	for barebox@lists.infradead.org; Tue, 30 Aug 2022 07:39:25 +0000
Received: from mail-mta-2.intern.sigma-chemnitz.de (mail-mta-2.intern.sigma-chemnitz.de [192.168.12.70])
	by mail-out-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTPS id 27U7cflM806704
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=OK)
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2022 09:38:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sigma-chemnitz.de;
	s=v2022040800; t=1661845121;
	bh=v4RCxUFNDpcnnBOeTUFINTBnVkmUh6snpPR2iII7ue4=; l=955;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=zNgEk4DHOraQyZ0xQ0vQWiFWIkgq0dB5p1PVANvTVxbDqm441prVg+BqpBGIFB1Ok
	 +qIQFgWwuIpXc9FxuiQ7j/zSgbSuinwhY1GCWZG3HfZeDgdtT9vS2gY13+XsTk7jDl
	 N4+J8aSMdGa5Z5Wzu+lno2Bc8Ajcb1+yQK0w0Me7vFeCE4NCdUFr2+3jPJsui/5L6H
	 9DmbkQJVZwV3B+Da20iot1MdSbk/sZJbcGDRVPRbapIIA6Z4rUNLfuouRhB8usaGEB
	 N3bBeTf5NosP3kl0SmTu4t56969O3kNhcvy4swlPlvlXLaZsWqvpGbjFaqNsOQ9Az3
	 LM6ZznqqqZF+w==
Received: from reddoxx.intern.sigma-chemnitz.de (reddoxx.sigma.local [192.168.16.32])
	by mail-mta-2.intern.sigma-chemnitz.de (8.16.1/8.16.1) with ESMTP id 27U7cOLH1001062
	for <barebox@lists.infradead.org> from enrico.scholz@sigma-chemnitz.de; Tue, 30 Aug 2022 09:38:25 +0200
Received: from mail-msa-3.intern.sigma-chemnitz.de ( [192.168.12.73]) by reddoxx.intern.sigma-chemnitz.de
	(Reddoxx engine) with SMTP id 89C2A5BAB53; Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc-pc.intern.sigma-chemnitz.de (ensc-pc.intern.sigma-chemnitz.de [192.168.3.24])
	by mail-msa-3.intern.sigma-chemnitz.de (8.15.2/8.15.2) with ESMTPS id 27U7cJim949558
	(version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384 bits=256 verify=NO);
	Tue, 30 Aug 2022 09:38:21 +0200
Received: from ensc by ensc-pc.intern.sigma-chemnitz.de with local (Exim 4.95)
	(envelope-from <ensc@sigma-chemnitz.de>)
	id 1oSvpD-00BJ2o-TD;
	Tue, 30 Aug 2022 09:38:19 +0200
From: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
To: barebox@lists.infradead.org
Cc: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
Date: Tue, 30 Aug 2022 09:37:59 +0200
Message-Id: <20220830073816.2694734-5-enrico.scholz@sigma-chemnitz.de>
X-Mailer: git-send-email 2.37.2
In-Reply-To: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
References: <20220830073816.2694734-1-enrico.scholz@sigma-chemnitz.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_083921_633843_3641889C 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-103.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED,USER_IN_WELCOMELIST,
	USER_IN_WHITELIST autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v4 04/21] tftp: do not set 'tsize' in WRQ requests
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The filesize is not known for push requests and barebox always sent
'0'.  Server might reject data because it will always exceed this
length.

Send this option only for RRQ requests.

Signed-off-by: Enrico Scholz <enrico.scholz@sigma-chemnitz.de>
---
 fs/tftp.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/fs/tftp.c b/fs/tftp.c
index 913ca1df6e42..361661d2180e 100644
--- a/fs/tftp.c
+++ b/fs/tftp.c
@@ -132,18 +132,23 @@ static int tftp_send(struct file_priv *priv)
 				"octet%c"
 				"timeout%c"
 				"%d%c"
-				"tsize%c"
-				"%lld%c"
 				"blksize%c"
 				"1432",
 				priv->filename + 1, 0,
 				0,
 				0,
 				TIMEOUT, 0,
-				0,
-				priv->filesize, 0,
 				0);
 		pkt++;
+
+		if (!priv->push)
+			/* we do not know the filesize in WRQ requests and
+			   'priv->filesize' will always be zero */
+			pkt += sprintf((unsigned char *)pkt,
+				       "tsize%c%lld%c",
+				       '\0', priv->filesize,
+				       '\0');
+
 		len = pkt - xp;
 		break;
 
-- 
2.37.2



