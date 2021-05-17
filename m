Delivery-date: Mon, 17 May 2021 20:56:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiQ0-0005Wq-2N
	for lore@lore.pengutronix.de; Mon, 17 May 2021 20:56:44 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1liiPz-0004aZ-9g
	for lore@pengutronix.de; Mon, 17 May 2021 20:56:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=j3+VzGUHhAqVr3UAY2+nGHAevkO2ZNXhmZm+58Whijk=; b=HcOLB4uj5F9Ms5k1oQqDdvzXJ
	cq6Ww/PifviY2M9rkQ2gtbeM2YWlU+JhJJOngoXo5/MNdNGVmElc1/LBPT1NbRskFxOIGmugL1Ywk
	CoUu6oms1xolAnSVdWwVfm0dqlfOz5rd+EymSvs9S/+SuATMIpggoZy7XUcW0t4aDSdzlhk6Bf5bW
	InqWOaESUeEQ6B4xiLVmDdy4IzXNEadOm7AaVo1XoTc+wJ0UYRZAAC7TOulTm/MUgox84jMOu56Zp
	1exZ4lXzx3KnWmFYi0mGhDlFQ0LhTnlzCkan5Uawczr81sk5z8hOB/xYh6CY32MS0LfnvKgGl/bso
	UsszQwaCQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1liiP7-00Ftvc-1R; Mon, 17 May 2021 18:55:49 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO7-00FtWq-9N
 for barebox@desiato.infradead.org; Mon, 17 May 2021 18:54:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=u6HaRmjbAFReeU6GZ4jiNb7Q7Ry2n7HutsEIJP8iWJ8=; b=MpxFFL6R981YTUNYsWUwRI3uKy
 BBBJUNdPGz/eFdxoQCz1KLvl6trdk1ckwHqt/vqzp45wHD6fW9Sr5w57fbP87cG3FR20I0WLRoVLZ
 CXxl1StcUBqmiDtwUP5PyW0yK5OREqRdRloOZXqbW7IoYaAJhR5O7rND9+V8ufkDFl0RvyMl4wIl7
 GlgF7r29q3HYfndYf5J+/pgAHsW/yq8ujq73Io2m44Pmet7dZUB838Hn8EPbaYoxhbJ7If0UTAL8z
 QVvDRSx9z8P0RDakRO6ru3+VcoNiZ3pes5CsXawk/DumG4Dt96ejK/eoKb68DlnjytUsfQODpyPkf
 3MWQdVcg==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1liiO4-00E4XG-UW
 for barebox@lists.infradead.org; Mon, 17 May 2021 18:54:46 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNn-0003PH-MR; Mon, 17 May 2021 20:54:27 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1liiNm-0002yI-EZ; Mon, 17 May 2021 20:54:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Mon, 17 May 2021 20:54:20 +0200
Message-Id: <20210517185424.32145-12-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210517185424.32145-1-s.hauer@pengutronix.de>
References: <20210517185424.32145-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210517_115444_996828_E1F462FE 
X-CRM114-Status: GOOD (  11.08  )
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
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 11/15] scripts: zynq_mkimage: Make locally used function static
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

parse_config() is defined and used only in one file. Make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/zynq_mkimage.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/scripts/zynq_mkimage.c b/scripts/zynq_mkimage.c
index 8b95b41960..b611d5c69b 100644
--- a/scripts/zynq_mkimage.c
+++ b/scripts/zynq_mkimage.c
@@ -142,7 +142,7 @@ static char *readcmd(FILE *f)
 	}
 }
 
-int parse_config(char *buf, const char *filename)
+static int parse_config(char *buf, const char *filename)
 {
 	FILE *f;
 	int lineno = 0;
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

