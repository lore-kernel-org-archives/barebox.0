Delivery-date: Mon, 31 Aug 2026 14:04:56 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x10kx-009GNY-1Q
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 14:04:56 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id ACD79200700
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 14:04:55 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ceqQsHPb;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=llX9zc1z;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=pass (policy=none) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Vlhldi51MIr4t1+3cIuNxWnyYT7FjlPZ3oNyLTWqWbU=; b=ceqQsHPbEGPIuTaoHok0qRqcC3
	9mj6Fwzrg1GZ3K9jDbd3bhs2QFBDhimDNFqO4rdkzcfL8ekygob9s2n5BRuY+KSK8p458I0DmARii
	Rk09onr8vFa2UoU0BtgUbC6zUKu1uDBPxzLwWEsauBYdKZcPAcgVL3wlcTsTGWwSlY+FWhra+CG/0
	HeHvdu5KuDVzl6xwtidhrQ0kkeXBb+A1Bf2bTK59w4YMGR39+CAh/gHaL4+rhOBK5WUfiigW9W/dx
	v3u/PWbABgGJLhWb3joDOktQLTj7dM0PFNXpx8NBGGW0tx9hQpBy53CeCI/XMQDlZKtSpYvS455fa
	WLrwrjww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10kV-00000009G34-3Kuz;
	Mon, 31 Aug 2026 12:04:27 +0000
Received: from mail-wr1-x435.google.com ([2a00:1450:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x10kT-00000009G2S-2Nkn
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 12:04:26 +0000
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-482e2fdf5abso1538140f8f.2
        for <barebox@lists.infradead.org>; Mon, 31 Aug 2026 05:04:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788177863; x=1788782663; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Vlhldi51MIr4t1+3cIuNxWnyYT7FjlPZ3oNyLTWqWbU=;
        b=llX9zc1zHo/7S+0/4jejHcf8lMBYiAQoHUokh4Ezp5rtoO7i5A3Iymq+Vou6mv7YSn
         cq31O7FvIo8Zsi4box3m5wRZvS26Nx0k+7qNm1p8qrVHKkCZ5YRpb0zcuUPn6d9kQsoI
         NDAo8Z8fDPWAw50dJqWkE1jfHtzKIK+yrzHuxFRQ8yeieECSG82l/7iklgoBQqWUCAmW
         eqcViPH+OjNAhcflK4DpefIYegBbim0wcvnjsCjISgON6QYHWWwivWYX3og/sckBJoYA
         a4cFej5WjvEMHa4ITARA0l3cr3YEmtmOGo7//lrjasJJb6C9fGWVLU9RqeiZvHSlj6MM
         raAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788177863; x=1788782663;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Vlhldi51MIr4t1+3cIuNxWnyYT7FjlPZ3oNyLTWqWbU=;
        b=F1omvxrRgvcald6qA2yr0cHnntx0Kj8qeKd5pjYV9tGC7xKDWkoJqlK+4R9VLa/fuy
         uN33DZGeD+KTp+EG0qYaS1FEtmlHO1AZJKLBNrpkkDzRLyAQfeTFQl3j7dOvdd0OTrUh
         nBEjPNBOoRES3loQo7+wQk/FRQxQkie2QpLBCpgxn50hHZ76wfnXVRHr3jhhRNk9jZqN
         h9JNA+bvIfFe78YAksXdTKv6qczrLMmJeoXpZQOo32AxaqtjVSYIfUqmQAhWr00tUhsf
         fYe7JtYJQiRVna7zaFseq3a+dmFrH4auJfiyYWaWlaaChlNUvDxyTl0PNCN2soDDNcIs
         1A6g==
X-Gm-Message-State: AFuF++nxsFNRaBaUYeIxdE4HbLL3DcbZiAWNIiTBCK6gZVOU4oOawbo9
	ea5/IKYCTxF7d3V+l92C/J5yiYKmeXAeDZzlGxIEyLUr//cIjil0kr9p1yJJsg==
X-Gm-Gg: AR+sD13cGP/O7ypw4AW4J8LiKS9Vym50hI4mfos+/MvYoKWGwNMAFhLzLBz2145Jkde
	Be9iR2oOog5t6bl3xwod8GSFgJiurZoIanhM4PuaAz7Sg1d5UQdlYKEN9AcvhqO3PK7j3/NjCPR
	JlMcggituAr6+NeEFnYRajbG4ywgxhSBVvgzXjder6VcXaFqqYYQ3fgouhtJxQPxWfab6g+rmCb
	qNOcT/JAVmlrsVjtTbO91REXOrrkbdP/NvEXk5t38LgBXIrP5NT+4CdOCu57vGJyhHb1CJIUvFQ
	oiuJDiaQHnQQ2bBzZcDFw+o94GV7JHTJS4NMh9nqfNrVte7lSRay3dBy4v0q6vAtaU4GLaTQno+
	35AzSeAFsAvft4MHbMSir0RFc7uNpVpSqa/mGmCXBozHOop29YUkyeKIRU4PwG+DHSJ4PXihj1S
	5xFpvlndLZ2SQS/nZtYZPLQmc6Yu2wNUX8p4gXicDKTS8WcB5Q+dFoRELHjWQ8Brw3G3E1UJb0c
	K0f
X-Received: by 2002:a05:600c:8b86:b0:493:f5bf:4dc6 with SMTP id 5b1f17b1804b1-49b91c2777emr448345025e9.7.1788177862841;
        Mon, 31 Aug 2026 05:04:22 -0700 (PDT)
Received: from gentoo.sknt.ru ([95.161.221.172])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49b955e7906sm236128655e9.1.2026.08.31.05.04.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Aug 2026 05:04:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH] serial: ns16550: fix memory leak of linux_earlycon_name on probe failure
Date: Mon, 31 Aug 2026 15:04:17 +0300
Message-ID: <20260831120417.220684-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_050425_614224_87AB1DE2 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  When console_register() fails, the dynamically allocated linux_earlycon_name
    string was not freed, leading to a memory leak. Add a free_const() call on
    the error path to release it. Also simplify the success path by returning
    0 directly after successful registration, making the code more readable. 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:435 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [eagle.alexander923(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [eagle.alexander923(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Server: mx1
X-Stat-Signature: 17kgm6s38g6im4g86myqtjxkqwt5e7y9
X-Rspamd-Queue-Id: ACD79200700
X-Spamd-Result: default: False [-7.41 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[eaglealexander923@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_RCPT(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::435:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

When console_register() fails, the dynamically allocated
linux_earlycon_name string was not freed, leading to a memory leak.
Add a free_const() call on the error path to release it.

Also simplify the success path by returning 0 directly after
successful registration, making the code more readable.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/serial/serial_ns16550.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 72bf8e4647..2c6ddabf85 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -554,12 +554,11 @@ static int ns16550_probe(struct device *dev)
 	devtype->init_port(cdev);
 
 	ret = console_register(cdev);
-	if (ret)
-		goto clk_disable;
+	if (!ret)
+		return 0;
 
-	return 0;
+	free_const(cdev->linux_earlycon_name);
 
-clk_disable:
 	clk_disable(priv->clk);
 	clk_put(priv->clk);
 release_region:
-- 
2.52.0



