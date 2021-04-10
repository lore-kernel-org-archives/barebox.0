Delivery-date: Sat, 10 Apr 2021 13:04:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBPj-000139-4q
	for lore@lore.pengutronix.de; Sat, 10 Apr 2021 13:04:31 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lVBPf-0001bZ-Ck
	for lore@pengutronix.de; Sat, 10 Apr 2021 13:04:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=jdiqHr3REtkPKVJU7WMkhsF1cS13W15g6q4YlUWqem0=; b=JzMnSYFR9KB8Fu/DXoNXH0U58n
	hqKPLSPuufqb+DUPZ5W3JPo8fBAJS3JRPrnhXqBIEfp6xcN4yWJ/ELvyh6+V5HleUVqcEXSRuFgYR
	y/f91ISACSQYgBH4cjikmodOe5DslCbEeJbqjcn7vYGFpKzKaLN+RvxWO7LAig7mhdy1xeW+ffcnK
	TgmA/dt1YNprnpEok1uRKLbLgk7Vgxi1uggDmXpST6PGoQPT5RTff9LCDIWQ5HzmnSGBu2iAchkVo
	3eTRkEqPAgF3AUFHNMzFDSJ9oisHwkg/YRKdtcxwmMvE50tdpDP94iMC/DQz7GQT31uuipLfCxv05
	pl1Nuesg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lVBOS-002hvB-5c; Sat, 10 Apr 2021 11:03:12 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBOI-002huT-FJ
 for barebox@desiato.infradead.org; Sat, 10 Apr 2021 11:03:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=9M7uaDxP5JM5FrIZhMs1SNFbfSscdTPVxl5dsbGIPkw=; b=4p2Kbmyn4gOEcjlXLVSXF2aSxL
 W6YOx1Lw6kkhS50Mc3BsRCIBa8ZsYyOimSpCveJg55Cl5kbE/paG7ErX1ZWR3FAZ0H1eC7ErLdg37
 /QTA5M372ymZUnSQrhjkSWknWuYl8izn4RhVJCDR3ensIoWXbZTEf/5oH+WYIad3ljNi4fp5GJF38
 CDLm1CoTOYZX5LRw3ZAVdVvQJ9h421oPqdATI6X2pZNiAvz/v2/2ja3p8zhk561H8ZDL8PUQjNg7Z
 tuwYtWVnmk1XFhmxT9hGrL29tvz6UwtJP4ph0RQsaLTXWkkIuENBDtK4FwPBbjQPNPIjMDPkciS9H
 4ccNi4RQ==;
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lVBOF-00538N-MI
 for barebox@lists.infradead.org; Sat, 10 Apr 2021 11:03:01 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id 9DEEE40007;
 Sat, 10 Apr 2021 11:02:54 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Sat, 10 Apr 2021 13:02:50 +0200
Message-Id: <20210410110250.2104510-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210410_040259_886428_701E473B 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH master] edit: don't change terminal mode if sedit would fail
 to read file
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Failing to read the file, e.g. because the file is actually a directory
will normally result in an appropriate error message.

When using vi or sedit however, we change cursor position beforehand
and then directly exit, which messes up the terminal output and
can even make the shell unusable (as on my Laptop's UEFI).
Move the check earlier to avoid this.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 commands/edit.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/commands/edit.c b/commands/edit.c
index 3ab4beaa4ffb..f1e4e4d5c260 100644
--- a/commands/edit.c
+++ b/commands/edit.c
@@ -495,6 +495,10 @@ static int do_edit(int argc, char *argv[])
 	if (argc != 2)
 		return COMMAND_ERROR_USAGE;
 
+	buffer = NULL;
+	if(edit_read_file(argv[1]))
+		return 1;
+
 	screenwidth = 80;
 
 	/*
@@ -517,10 +521,6 @@ static int do_edit(int argc, char *argv[])
 			is_vi = true;
 	}
 
-	buffer = NULL;
-	if(edit_read_file(argv[1]))
-		return 1;
-
 	cursx  = 0;
 	cursy  = 0;
 	textx  = 0;
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

