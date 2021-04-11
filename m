Delivery-date: Sun, 11 Apr 2021 22:41:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVgtg-000374-Fe
	for lore@lore.pengutronix.de; Sun, 11 Apr 2021 22:41:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVgtf-0003t7-PK
	for lore@pengutronix.de; Sun, 11 Apr 2021 22:41:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TDy87rJSdXVYAlxcw8+j3Qo0oGmHhv9qhTjyK1qMnGE=; b=NDqHCa4mddSc7+/ceJ+ceJOk2
	TviaJv4nPLWx6BqmIsMiHXG5ab8MQxzo4f6JTsoVwnLTuKkdr3A07zlHz1lR3zsSnMIKWjXDxRtep
	eswxEwhlzttbNMqCVASprvlSsaSysum0OjkWyOZHsRnMaVjwhyjUQsfNrjlsKwRpjiOAw0wNm277h
	rwosKlZn+/KtPN8dWWcqQxPONWYbEMVRm+ZIYlGUlv4SvRMnoD+FOCa+YtXfxiOyKPeUphMylpTNu
	+fgI90BEOL/8gnx+pNiDXd6zirLKtvdQi5h6zA+hBOuMXVDNMFBWnmMzarmkPpQyYIIS1q8ienYtV
	bSHP0Vjiw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVgsK-0054YM-PY; Sun, 11 Apr 2021 20:40:09 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVgsD-0054Y0-QI
 for barebox@desiato.infradead.org; Sun, 11 Apr 2021 20:40:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=jkYUvKOWcec5Tc9o7HS14CKI8FwJ0q8o4L0HKV0ItgE=; b=ImpyeFcVPf62+/qT7TMkfG8VEp
 n8pFZr8wNYmd6dN+34hxyJizpHlzCykyMUf+c8zNnFJnEBAOI/PWfrOIAB1ReLHPTSI5mIjkjyAiO
 e5h5p38/ogPKT9Gfi/sU84vAJqsj5EZYDKfxWTLIuCxR1hccCH5UjER/myIuiyfnTlPs8SGAzEtkc
 DGENg/EybfKH0ZQJExLqdvcwWSluxY2Me9eEGSwFyGWarPdQ74N2yUOJg4vOVynNkdxbHGSgtTh/W
 xNsy3JFNIYK0MCkfZ1m6zlYcIKhD+dniR5/XlIy7RVNtONWHmeoW1j4wHBlIQvspkee1HgwAm/fvV
 CR2IWBFg==;
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVgsB-005hAk-5J
 for barebox@lists.infradead.org; Sun, 11 Apr 2021 20:40:00 +0000
X-Originating-IP: 87.123.111.255
Received: from geraet.fritz.box (unknown [87.123.111.255])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 9C502E0002;
 Sun, 11 Apr 2021 20:39:51 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sun, 11 Apr 2021 22:39:47 +0200
Message-Id: <20210411203947.3296981-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210410104505.2076790-1-ahmad@a3f.at>
References: <20210410104505.2076790-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210411_133959_351908_1F81A789 
X-CRM114-Status: UNSURE (   7.45  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! common: add option for shipping KCONFIG_CONFIG as
 /env/data/config
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Doesn't make sense to have this without DEFAULT_ENVIRONMENT_GENERIC_NEW
support. Similar options depend on this as well.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 common/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/common/Kconfig b/common/Kconfig
index 2872c80dbf13..bddf802d3bb4 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -943,6 +943,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_REBOOT_MODE
 
 config DEFAULT_ENVIRONMENT_GENERIC_NEW_IKCONFIG
 	bool "Ship .config as /env/data/config"
+	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
 	help
 	  This option embeds the used barebox Kconfig .config file into the
 	  environment as /env/data/config. This will increases barebox image
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

