Delivery-date: Wed, 19 May 2021 08:03:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljFJG-0003Nz-Qi
	for lore@lore.pengutronix.de; Wed, 19 May 2021 08:03:58 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ljFJG-000113-3t
	for lore@pengutronix.de; Wed, 19 May 2021 08:03:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=nBdfpzWWMnZUZYtconNnroQr0acb3tw3fPWpJrxaUHs=; b=E2TwKl+Se+i7qG1T+xr49CqaEB
	jslULgRfy8Aa0qUVZa3rHC6P+mUXFNEjB0a9Efy5aMIn/8lUZZ8jGOVZFNTJKPF+nKhQaDtVQGTFU
	fbfkU1huTWE+Qp9kfQnMOmq4QmwsESA1MaRRMOFG45mXwlgxt4cmyYJPp9ta7kDQUwQDPQBVVj986
	wiOmG36PtByLFBXL+ex2w8UMTHLxJwK7DPqevZ2DqyhrBmB4TfD+brPv3VrfGXHmvlYEvNjjyQ4/B
	YfSMYy0K261i+6YErskBpVNJ/i8fTg5heIrTIOeC2waapigVWwJEDnPnXolt6hbfhlrtO7h3EqI7V
	m6nzcWpA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1ljFHx-002wNs-GU; Wed, 19 May 2021 06:02:37 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljFHs-002wNM-5Q
 for barebox@desiato.infradead.org; Wed, 19 May 2021 06:02:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=MesprCzZ3CG7piWRRYR5BBEbJj5xsTX06sxuBEaVYys=; b=DbLfY6dfks4/S3YYWUFMGUS8BN
 /q7+5NNL1oY/kQ4eXDcvvFT/n4tG1mN/1g+D1L7dNUQDQ6HUBHDO9hx3aoSUXyPEAV9nyZI3fToTY
 kxmVhNU4XxhxZi9Oa39FI68dNaSMeYYSi70O1ueEAVnUKxJTqZGsQFddjWgLW+5726QCL9D7o/qNh
 CAMz+XfSXb/t2nTQ+AYs8eYY4W9hKUYSuOWgGk+KDjl48WDX0yyCNk5aqj+cqpkRp8Gft34ovTER/
 ANSLd29m6CpgwQ7DXn11Y5u7y+pHSIS+RZPFMV0smetj9/ZzIaDKauEHYuwBgIP5HjA9qgkibaanS
 y5C2mNDA==;
Received: from mail-pl1-x631.google.com ([2607:f8b0:4864:20::631])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1ljFHp-00FARl-Hm
 for barebox@lists.infradead.org; Wed, 19 May 2021 06:02:30 +0000
Received: by mail-pl1-x631.google.com with SMTP id h7so6417245plt.1
 for <barebox@lists.infradead.org>; Tue, 18 May 2021 23:02:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MesprCzZ3CG7piWRRYR5BBEbJj5xsTX06sxuBEaVYys=;
 b=jAoIcg+mXdRkao3Tf0J8uISTtkuxTjLUXsowF/oQRvhU46tWE5K2eQvlKhBKS4lWmP
 M+Si/HMHXSNC5AxsMVbGONt9u71jRV94VHjbgBHkWztqijosPPuzAwvM8yTjGD2nOVPc
 nhDBpPO+ygLJgmoDZE2sUexiAC+Fub7jeZFHh+CnT1HC3+S07gWI1qp6xaDjRSes8gF1
 fzlDJ9+6ZyxK8mgQTaf6nhbr+F4pd8qord1GmrP02S9bEGrobtRFj516Vxw7DpBGDGjw
 /fLs6mSkdm8r9te08wAAv6CCuoPVGyc9lo+BkOnNm3TeGH04X7gLrn5mR52hmoWAYtKA
 rw9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=MesprCzZ3CG7piWRRYR5BBEbJj5xsTX06sxuBEaVYys=;
 b=U/W9HZ7UWY8XZif5NUEefDbwBm7wsgRmYaqYwbPaCnvTAeivYMLb3mvh0qt2F63jTu
 V0cofJMtpo55pkjmThq4dtJbt1y/ELTaAX8ksIt2pi0mVrS5F2jta51z7kYyEYeXBwpF
 vbDD4Wz2/9f1K4WGgZB/c3s48BuBsde0erucWlMT+QIWdPKoFrc1j9HcnOASBEGPJ9YO
 towgzwqVjjMVvcinC2sw1ANbeUjB2Lj++JQ9UNCNeiq3uO35NKxc7JztOYxIEiC69xkD
 EQdYUOowJsr7CU9jz6FJcgrrXONuJ5Q8Q5UsMYeSB7Pelu5/KZ3TPkHfGDR5quS/PLT0
 CbKA==
X-Gm-Message-State: AOAM530JZ4cAiyOvTKxVcEKs9GblL/2IQun3NhHf29nmFg4xCTzdG7ej
 Uas0Tn0t5CpnFGR59gmIQw5aCCjBkzHeeA==
X-Google-Smtp-Source: ABdhPJybTc5fzE/kJqvS1MyGN1FsVvpSt0kALp8lmjRw6CC6Xl/I2EbSBAPJZ+Ukjm4pESgvF6ifCQ==
X-Received: by 2002:a17:90a:a607:: with SMTP id
 c7mr9856981pjq.199.1621404147767; 
 Tue, 18 May 2021 23:02:27 -0700 (PDT)
Received: from zen.local (97-113-152-155.tukw.qwest.net. [97.113.152.155])
 by smtp.gmail.com with ESMTPSA id j26sm13493454pfn.47.2021.05.18.23.02.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 May 2021 23:02:27 -0700 (PDT)
From: Trent Piepho <tpiepho@gmail.com>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>
Date: Tue, 18 May 2021 23:01:34 -0700
Message-Id: <20210519060134.2976676-1-tpiepho@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210518_230229_611918_DEC6BD84 
X-CRM114-Status: GOOD (  10.90  )
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
X-Spam-Status: No, score=-2.4 required=4.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_NONE autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] Documentation: Update env sources documentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add CONFIG_DEFAULT_ENVIRONMENT_PATH to the list in the proper place.

Update the board env to follow the new pattern for naming and note that,
unlike the other directories, one must add code to get this directory in
the environment.
---
 Documentation/user/defaultenv-2.rst | 16 ++++++++++------
 1 file changed, 10 insertions(+), 6 deletions(-)

diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
index da766e4ed..bf738084b 100644
--- a/Documentation/user/defaultenv-2.rst
+++ b/Documentation/user/defaultenv-2.rst
@@ -19,14 +19,18 @@ All new boards should use defaultenv-2 exclusively.
 
 The default environment is composed from different directories during compilation::
 
-  defaultenv/defaultenv-2-base        -> base files
-  defaultenv/defaultenv-2-dfu         -> overlay for DFU
-  defaultenv/defaultenv-2-reboot-mode -> overlay for reboot modes
-  defaultenv/defaultenv-2-menu        -> overlay for menus
-  arch/$ARCH/boards/<board>/env       -> board specific overlay
+  defaultenv/defaultenv-2-base                 -> base files
+  defaultenv/defaultenv-2-dfu                  -> overlay for DFU
+  defaultenv/defaultenv-2-reboot-mode          -> overlay for reboot modes
+  defaultenv/defaultenv-2-menu                 -> overlay for menus
+  arch/$ARCH/boards/<board>/defaultenv-<board> -> board specific overlay
+  $(CONFIG_DEFAULT_ENVIRONMENT_PATH)           -> config specific overlay
 
 The content of the above directories is applied one after another. If the
-same file exists in a later overlay, it will overwrite the preceding one.
+same file exists in a later overlay, it will overwrite the preceding one.  The
+board specific overlay, or overlays, could be at any path, but usually follows
+the form given.  They must be added to a Makefile in ``bbenv-y`` and
+``defaultenv_append_directory()`` used to add them in board init code.
 
 Note that not all of the above directories will necessarily be
 included in your default environment, it depends on your barebox
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

