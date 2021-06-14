Delivery-date: Mon, 14 Jun 2021 16:30:57 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsnc9-0006HZ-Ne
	for lore@lore.pengutronix.de; Mon, 14 Jun 2021 16:30:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lsnc8-0003EI-S6
	for lore@pengutronix.de; Mon, 14 Jun 2021 16:30:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=wTNY6WatLzUqKHyG4Il9EyBZcjAOVgsk4PbmPGVVQGo=; b=VM/A0zUdpX/3JL
	OdCRTtYX69H2pFllPAQ//GI7bwWBweguY4fxUKCoZ3Nsj4Ae7bSnOKdlC++BkGCLDyebzQ06DYFXM
	YTYaWlWf6XBPW+8+9y4/8jAStn1Dqhpiz8IpeCux5hCKZ0n3i/Cn1cOTwdLvK45Q2DrwMxyk5fO7a
	PPS/w1DfeWmQKL0YX0mAH87/ENrmGaOrbZA2j3dZyvLSsESUpShbOkz2TzDnWjHZvab7JPLFcoZIs
	ObSWEX975othb3yZExNieI49RuTvITdTrY9MyQPXXQGUPQ6g7JKHPezl7XXspzFVhogQPEsZGXiGj
	+E6BsUIvPPDeiF3uzpaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lsnak-00EW1R-VX; Mon, 14 Jun 2021 14:29:31 +0000
Received: from mail-lf1-f42.google.com ([209.85.167.42])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lsnaR-00EVxZ-JJ
 for barebox@lists.infradead.org; Mon, 14 Jun 2021 14:29:13 +0000
Received: by mail-lf1-f42.google.com with SMTP id a1so21400279lfr.12
 for <barebox@lists.infradead.org>; Mon, 14 Jun 2021 07:29:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQnE3QJsEKoa4BTv//TNr01Sl6Dl9+WeyO6ZLDnzVxE=;
 b=U22/VdewV2L5SPqApRt2gYX3BxsRUJV6nfhhBw8++7yPzPcaHoIMn/NnQUGVb7XyPc
 76KnMgV+JDrcSmM/mZaQEB8waN5chU3TIsVM7M9z0/Zfh60EBbN/14gnkJz3vah2wIvJ
 za3PJvNWH0T9cUY+OlGY3/Q6avGk53SJCTvZ3TuwmH+FNVRY+N32SyzlCWTtm6Xkovep
 yJVnY9sbcPAZ/tfz7BIWpDzbSZ9A8ButL5JPK1Ub2RXQB41JGJ8D08dtB6blztlrAYeK
 DITNkdQ92UE6J+faJ5QQ+FVOxuK46VXETqne5vYq4r0Fwr9IE86R2PPvAVvzxaLTQiN2
 1PxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OQnE3QJsEKoa4BTv//TNr01Sl6Dl9+WeyO6ZLDnzVxE=;
 b=ljj5Aj7qnsxnMUgeAG0w6x5uW/xi2gZYjV6FsjJMOJnFkQ2cpFITVcZpRBBJ0lqmAP
 lMgS6709Ef/dBNO646QLRC6YO4SlYuPn/xaCIut1MY78VPinQSvOjU0OIDc1dksdZvll
 rAl/WWjxPu0kp8E7yjiv7bVfMKq/QANElkdED3OmNKEJQmLktMPFRMdH5TjgMOJESr1R
 5io0iTYI+Kf8wzVVzmDMQEANl0d7moC/WTm5VI8lC1HXj+fqvxF5ZsJIpDYOnHcnJOIQ
 X7yiln+jgpQLYaxb1VvmC4w0QNmqY/ri0GKjre3RE2T8rh99OiN6o7tCPio41WuNjW4p
 qHFw==
X-Gm-Message-State: AOAM5327RNHcFh9cSLKQiua8p7U7rBTo15eteO5iJDKg0bdPtx2WiNpH
 bi17bVSMelr0kHifea/OiSjEWQp/4PE=
X-Google-Smtp-Source: ABdhPJw5o6eFBHLbNNMUdTwqsSvx2Kymo2ihaRxYYa8Pl2CE3+WFaNWRRcjt4FgrmCgIq0cyni1YfQ==
X-Received: by 2002:a05:6512:926:: with SMTP id
 f6mr12597863lft.552.1623680889404; 
 Mon, 14 Jun 2021 07:28:09 -0700 (PDT)
Received: from localhost.localdomain ([176.59.54.8])
 by smtp.gmail.com with ESMTPSA id z15sm2508lfr.116.2021.06.14.07.28.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Jun 2021 07:28:09 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Mon, 14 Jun 2021 17:27:53 +0300
Message-Id: <20210614142753.86477-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0.rc0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210614_072911_695143_91C35C67 
X-CRM114-Status: UNSURE (   9.89  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: RISC-V: erizo: fix header level
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The "Running on DE0-Nano FPGA board" is a "Erizo" subsection
not independent section.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/riscv.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/boards/riscv.rst b/Documentation/boards/riscv.rst
index 59cdc00a99..387b86c588 100644
--- a/Documentation/boards/riscv.rst
+++ b/Documentation/boards/riscv.rst
@@ -122,7 +122,7 @@ Run barebox::
 
 
 Running on DE0-Nano FPGA board
-------------------------------
+~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
 
 See https://github.com/open-design/riscv-soc-cores/ for instructions
 on DE0-Nano bitstream generation and loading.
-- 
2.32.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

