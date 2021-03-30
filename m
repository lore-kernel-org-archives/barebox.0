Delivery-date: Tue, 30 Mar 2021 08:53:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FT-0002y5-D1
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 08:53:11 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR8FS-0001hO-Lo
	for lore@pengutronix.de; Tue, 30 Mar 2021 08:53:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=U53Ky9NrjhB0YWd5VgoMO34zruQnOryYbio5mTzUY5Q=; b=NOWWVZvTwcAdmAVms7rqzJJUM
	gxC4DAzwAAVIdIjM0mPNUD8Q5/rJb23mlgpXbFiYaYcqIJIj4fi+fJczrXBDfk0b4AsUXPtDTKWuG
	FOy/Ndc4WZFYsEvpnDor4VlGk2xsURviemVudH6iBbR/OpVFPLww6mTCiJ3gSS9xxujz9eQ7r1IOm
	XPrJLFiMDdEKnAH3Gpho1zfrLICIS6qWaZrdZDxfbJvCnxQhvWDp3EJT7aKdWfz/qbh3kb9s9XXaY
	m1u5KoBA2VunYJkCKoUMaDc8cvOWSku//FTD5EsekNg1SDSTiabJx8xE+UcU9HUfU49/kkvG9F9lu
	vm9PlpRSg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR8Eg-002s18-TU; Tue, 30 Mar 2021 06:52:23 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR8EX-002ryz-NQ
 for barebox@lists.infradead.org; Tue, 30 Mar 2021 06:52:15 +0000
Received: by mail-lf1-x135.google.com with SMTP id g8so22130721lfv.12
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 23:52:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=dl+rn4P+Pvf8Oyy6Y3wUeplGq9EZ6yQj7K+WqGxTGPc=;
 b=EBPc8Cg6nHwH/1IrXralstj8ZDPpUF95uqElKcZqI35bp7AcurVaUk3VQBSaeWl9M0
 TL7CUC3xJixeC9/zScGWzb2sOkI+zIY+EylUkDRTb0/PFKGX0GPP8Ipjl3C8Pr17npXu
 rN2uuih3bFKe7JH6hMCPvaEEhKm0G2DNjDmONBx3IlVfJN23C41AH7ORnwquSXne6c3E
 ZAbJ/a0zGLDaajsyJrWYlNhWit94tcpfsgD+4Uv3YjOvv1WeaBK6IbBOS2X4jgOU7NCF
 JWs5MXv6FIDVDA+HwQntEXeyRKvofm///lxbG5tQb8LQJ5gy3yWGeXshaVyurraEyGoc
 lMhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=dl+rn4P+Pvf8Oyy6Y3wUeplGq9EZ6yQj7K+WqGxTGPc=;
 b=pn3HOKthDdJJpJI8FXXXTTiUfdBGgVN0v1sJSHccD8u4PWA4oXO5OBrCq+5h5LQUQq
 3juEg//irOfKuyckSHFA5oeYwn2rLqfNvtvRZ1GpVTngu24O3w3Wym2yFjWCBlqYvm9H
 7gpd2DLNo+Wqd7oC59KzEGcFwGwJWR94ciYGmL5GNmshLkjmqLv2Cj1ZzQDxshwGq0KQ
 NaAwxUEGp2T0sCdqB+nMh6LYdNNDNjjQel78I4+HDoAgvnON+9ID/hwDHq8FiLAVTQU7
 zxbm/MWV1n+zKCPw8zXrXP1zaXbS8EZapBjC57CbZio2TDAVqdAnPTatYyhuaNKEe6qE
 kb2A==
X-Gm-Message-State: AOAM533oQ5puf37QwY+JVsVyJAwLYSuGWfP6DkHngXECOTZClCtL1kra
 7XkagtMzp+VM4uHovPUkBPTM1epqSUw=
X-Google-Smtp-Source: ABdhPJzu7ldDUlrsoUi2kBtDXqsaLxWl8yCDeue2C41Tde3wa9aPu9e6fTNBTaJWAba40ABx343sLg==
X-Received: by 2002:ac2:4c85:: with SMTP id d5mr19766982lfl.503.1617087133044; 
 Mon, 29 Mar 2021 23:52:13 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id v9sm2075015lfa.32.2021.03.29.23.52.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 23:52:12 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 09:52:07 +0300
Message-Id: <20210330065208.446667-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210330065208.446667-1-antonynpavlov@gmail.com>
References: <20210330065208.446667-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210330_075214_004015_1797410A 
X-CRM114-Status: GOOD (  10.39  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] Documentation: dlink-dir-320: update image file name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The commit 102676feb218ab59 ("MIPS: port all mach* to multiimage")
changed D-Link DIR-320 image name so update it in documentation.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 Documentation/boards/mips/dlink-dir-320.rst | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/boards/mips/dlink-dir-320.rst b/Documentation/boards/mips/dlink-dir-320.rst
index 7595381f55..b60995489e 100644
--- a/Documentation/boards/mips/dlink-dir-320.rst
+++ b/Documentation/boards/mips/dlink-dir-320.rst
@@ -21,7 +21,7 @@ Running barebox
 
 Barebox can be started from CFE using tftp.
 You must setup tftp-server on host 192.168.0.1.
-Put your barebox.bin to tftp-server directory
+Put your barebox-dlink-dir-320.img to tftp-server directory
 (usual /tftpboot or /srv/tftp).
 Connect your DIR-320 to your tftp-server network via
 one of four <LAN> sockets.
@@ -31,7 +31,7 @@ Next, setup network on DIR-320 and run barebox.bin, e.g.:
 .. code-block:: console
 
   CFE> ifconfig eth0 -addr=192.168.0.99
-  CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox.bin
+  CFE> boot -tftp -addr=a0800000 -raw 192.168.0.1:barebox-dlink-dir-320.img
 
 
 Links
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

