Delivery-date: Fri, 10 Jun 2022 07:42:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPz-009fMs-42
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 07:42:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzXPx-0007PO-5J
	for lore@pengutronix.de; Fri, 10 Jun 2022 07:42:46 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CWLadTHlLOUhq698XJRPHSOwySzkEjbU6hQpmpGHdqc=; b=VFBr8LxyBGftYH
	DDIe7+Hxh4yIYmAQbJGZFrI4EpkY7rtOzkxrZJgZLrOzv3doy95IQJ8kCB9hKHF+phJk6+2q3yZw1
	JyiL9tZRjo2u5ciIYes2T7Fe5N1S4hdNdGOXV36w3knJWppfBvXXv8bV4/J5Q6c2txrlouaV8qS4b
	yIolu1HNOreQYMhb97pltwl8RG5G/F51uZR1/qhIaJ0rX0nGTRBudFNe//zPJX6/9gaVq7jToCS19
	AFQWvWtOuY8RxvfhExRDlNanI9SDPf5YRC2gOXCYlKlfWVU9D+0pV6zKSKygYSPCv9HME+cmK0iqF
	QUEu1fMmiCjEkk4QdhaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOc-00601u-RF; Fri, 10 Jun 2022 05:41:22 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzXOI-005zpj-4H
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 05:41:03 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 20so1669248lfz.8
        for <barebox@lists.infradead.org>; Thu, 09 Jun 2022 22:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vML4KaYhQxz04BUiw2jjdcbRr/3DhF4Fv3Hyzu3AarI=;
        b=miskzbVA3oKTtRbcqZryuhChC0tHYvZrLR02CXrVmTv0Fis2bkx7LJw8cQNqvFx+dW
         QVqpom2d8BtLora0a0BQIQtJ14xsczyd0A61te6aqIbZb4ImQThuEvgwcLZ8Zje2e4g1
         7rD8cZswh9qYerexCml6Z8ngpc0whz05InVpnCdE5kS9n8v5WrZvUub7wQdtQGpcxTD+
         7LNi/+SijWtNXmwMSxBw9wtpPESDvgKbCOR+nNEni5I7mIKuJa8qe3cMzI3eJnOkU9HI
         BqbiKmEKLTdE7EwSJ48KHeTuUrG7rj90idK7Eo725he6ytJYuWI3fmmBUERM2VB/WxYC
         9Odw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vML4KaYhQxz04BUiw2jjdcbRr/3DhF4Fv3Hyzu3AarI=;
        b=V5k30Sht3pho5rV3k9ygdUuh0y2Ofvai90p4aTuXaKhMlaI8DhQtI0h3/8AwF+qaFm
         P5oAzbqVv2tvhdB58NpMs2UZ6qKPw2/LqbVHdT6roR7GktO8urR8ibexYnO5razbdkoI
         ZXpcjDwTgqU8IxKX+b1bY8nmoXrNEggLhx9OUeprpJCYBv5pZeq/cfR7H1P62zYIe+Bb
         XGdd0awAYKDmkKyUxLmPF9Fk7pm/+pQV89ZYOOnT3dN13jyu+srxG5vAoyR4Bikfg+1G
         cHYBJC2tUE8+7jyo2oEzOjIvFosisx3MCD7RFyn5dz5TaFmPKu9l5MB2RxA04ag5bXzh
         2otQ==
X-Gm-Message-State: AOAM532XnPT0eAujpjOT6zRgRIXqxHI9y7VADyFulaMzTTIDGimecb32
	SzIExIVI/C6f5ebo7cshZN8NeYe+7R8=
X-Google-Smtp-Source: ABdhPJwPJzmBENwwV4QF+YjYJrx4NIXjSPPvIOMvhhpIQbQzME713IBgEGtwzM7g4Xc3WuuUf/MBjg==
X-Received: by 2002:a19:ae1a:0:b0:479:184b:fae9 with SMTP id f26-20020a19ae1a000000b00479184bfae9mr21574328lfc.245.1654839661265;
        Thu, 09 Jun 2022 22:41:01 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id v21-20020a2e87d5000000b0024f3d1dae84sm4009770ljj.12.2022.06.09.22.41.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 22:41:00 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 08:40:50 +0300
Message-Id: <20220610054051.4911-9-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220610054051.4911-1-eagle.alexander923@gmail.com>
References: <20220610054051.4911-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220609_224102_207667_B7C59007 
X-CRM114-Status: UNSURE (   9.83  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] commands: Add CONSOLE dependency for EDIT command
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This fixes the following error (without CONSOLE support):
arm-linux-ld: commands/edit.o: in function "do_edit":
/home/ARM/barebox/commands/edit.c:684: undefined reference to "console_list"
make: *** [Makefile:872: .tmp_barebox1] Error 1

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 commands/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/commands/Kconfig b/commands/Kconfig
index c5505321cf..86e4714849 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1327,6 +1327,7 @@ config CMD_ECHO_E
 
 config CMD_EDIT
 	tristate
+	depends on CONSOLE_FULL || CONSOLE_SIMPLE
 	prompt "edit"
 	help
 	  A  small fill-screen editor.
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

