Delivery-date: Tue, 06 Apr 2021 17:02:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lTnE2-0008PW-7K
	for lore@lore.pengutronix.de; Tue, 06 Apr 2021 17:02:42 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lTnE1-0004ox-DK
	for lore@pengutronix.de; Tue, 06 Apr 2021 17:02:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=4P5PKindg/x4Gt14Fi2JezrLFIu/WQYHS+lEiQaJkPU=; b=MWl+EsNfglcrPVpnhBJGJO9EmM
	TDHtHRIH1bbVGiHsXrp/nn+59mSz5It1SBi8zfX0F4mPP2k7lkH575esUlQwSkHtmjJAmr7sQI99Q
	n0iQHt/2XFZjDNCgF4Ek5hYfvO6zgh2hj0HpNZ1vTLVGC1jXXHEiys1IFbHNSm+kNZS79vk1Uga9H
	SXRgJJ37Ay7fBrUm7nAGyBMneZSMd7TYdFXKOqMfRXZN8dEPA3KBsdOVesbwqGOBeIYAmpXMHPQYJ
	3xfbFTu1+TviR8U6zIefUtEWNAnzIO1zBnBLwt+kfUmXRXILizqlMsIkjHXofd8ZLKTIHrg3yCueY
	2EfbVCYg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lTnCw-002tAx-JL; Tue, 06 Apr 2021 15:01:34 +0000
Received: from mail-qv1-xf2d.google.com ([2607:f8b0:4864:20::f2d])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lTnCo-002t9p-LF
 for barebox@lists.infradead.org; Tue, 06 Apr 2021 15:01:28 +0000
Received: by mail-qv1-xf2d.google.com with SMTP id o11so3024167qvh.11
 for <barebox@lists.infradead.org>; Tue, 06 Apr 2021 08:01:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x5Zhdu1KJeozSeTPBofR1yvt2yPJc8fMpUWspUgOD8A=;
 b=R9MdNUXADURMc38wRXTKzrYRvh+F1seDi8rmmHXwFss/+AiLbwlT4cYDKal8aodAaY
 qAk+3e5bAff5w2lWziUEOplB6lzibVLi5ZN5d8S9nCmeLeTRofEVRQlvV4qtNmJyGdT2
 0QHZRGYHAvEIU4wbM9wBJl4Tn991ZWHCfixcFjrpYyVJmIpB6XsOtNRnL0gmw076c8Lm
 VWyLweV1jqbKTZz7qgypV3LrCDHgZxJX2AaWOu5kRko8h4qVJvJFcFyhWdkLtXETkRIN
 wAh1KToa/1nGoBKsLc9DleKxU/XlOD6WD55koybhtWU86rB7ZGo6/cYKhLIdnmS76g9v
 NB0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=x5Zhdu1KJeozSeTPBofR1yvt2yPJc8fMpUWspUgOD8A=;
 b=AsHY9vdKG3Dh8wUb/22xOVBGeVVzaA7tGXdh8bQXVlekSJbIowf+Zo4p5ehXqyXacn
 OSmVCHsliLSzyjcJ8aKurwE8JuOLsa+O47R9w6/Pt5lpm2BhxYEN4wYLltkZ0zxvThyr
 boeY6feqrFHI0r0mlQRNRqFS60UFOj9Qz2rbgTaiq+nqy5FVF3yoyJedrEs7f2a/j2H4
 IfzxZ5eKfxYo5P8aDgBZOni+3dIsgASkIEOVQODe3qDexdUE3W2O7r85w+NEeRCI/X4+
 bA4SdofGjMFu+zz0TtfkkuCwrSig9c4THWg3SHCga2CAIz2n1q2GauRrvA4HYC+LXCDj
 TeOw==
X-Gm-Message-State: AOAM53080Mt5ly0YsgIdUn48jtXN1dUcdI/JaamlK8ngyXi+c3izLc9g
 XJgDi0LffMiLdx17waXJQ9ynz4pXPhA=
X-Google-Smtp-Source: ABdhPJzSwPWoRNt9Ed8RIjqm+xv3eu48zR0+EQv0khR2WCiv85XfEJ8yF5HunEYxYZDSZixKIoYA8w==
X-Received: by 2002:a05:6214:19e6:: with SMTP id
 q6mr10084111qvc.11.1617721284307; 
 Tue, 06 Apr 2021 08:01:24 -0700 (PDT)
Received: from localhost (modemcable249.105-163-184.mc.videotron.ca.
 [184.163.105.249])
 by smtp.gmail.com with ESMTPSA id h13sm14593815qtn.26.2021.04.06.08.01.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 06 Apr 2021 08:01:24 -0700 (PDT)
From: Vivien Didelot <vivien.didelot@gmail.com>
To: barebox@lists.infradead.org
Cc: Vivien Didelot <vdidelot@pbsc.com>
Date: Tue,  6 Apr 2021 11:01:20 -0400
Message-Id: <20210406150120.4194149-1-vivien.didelot@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210406_160126_764582_7A36AADC 
X-CRM114-Status: GOOD (  12.40  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] Documentation: fix sucessfuly -> successfully typo
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Vivien Didelot <vdidelot@pbsc.com>

system-reset.rst was embedded a classic sucess -> success typo. Fix it.

Signed-off-by: Vivien Didelot <vdidelot@pbsc.com>
---
 Documentation/user/system-reset.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/user/system-reset.rst b/Documentation/user/system-reset.rst
index e76e3a23c1..bf7369d06f 100644
--- a/Documentation/user/system-reset.rst
+++ b/Documentation/user/system-reset.rst
@@ -31,7 +31,7 @@ But there are some drawbacks within this simple approach.
 * some SoC's boot behaviour gets parametrized by so called 'bootstrap pins'.
   These pins can have a different meaning at reset time and at run-time later
   on (multi purpose pins) but their correct values at reset time are very
-  important to boot the SoC sucessfully. If external devices are connected to
+  important to boot the SoC successfully. If external devices are connected to
   these multi purpose pins they can disturb the reset values, and so parametrizing
   the boot behaviour differently and hence crashing the SoC until the next real
   POR happens which also resets the external devices (and keep them away from the
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

