Delivery-date: Wed, 03 Mar 2021 15:03:37 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS6D-00084S-6u
	for lore@lore.pengutronix.de; Wed, 03 Mar 2021 15:03:37 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lHS6C-00073F-CK
	for lore@pengutronix.de; Wed, 03 Mar 2021 15:03:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=hq4WE+uEGNfLKRi1Q415nuj0+3Ysp/NHxxZfw/SXWPg=; b=VwGoyBsXhdSARKAmbgu6oHQWAK
	BW8XYfTJ0jf76hT0pY8siHiagcy1j1vcRZ+sHVVW00yPINdaEvNn5j1lfXcLvUOtI6jgA61EF0CBq
	HLBAihmOjolKCtY/ov1K8Iots4dd4Mz3emDhiBjHQ77bCXMUfujz/DWXhWnsCvbngt3Rklt0Y6fAb
	rua+7iROXPuy12oXEmzIGbDbnebw3Sh7JsJ0CnUfehaqv4kmCYMgaz7PiF+N5w0yNcvURXCu3nEp3
	Ax4zv+w3I+Nbs8+3AW0Gtk65Fc7+HQxE7B+pHZ1o2o+1rLyeGnsLx83lRJX5LhmHZuThyAepw3Ej6
	JNBF84dQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lHS3w-0051sx-8h; Wed, 03 Mar 2021 14:01:16 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lHRtl-0051VC-9O
 for barebox@lists.infradead.org; Wed, 03 Mar 2021 13:50:51 +0000
Received: by mail-pl1-x635.google.com with SMTP id s16so14062066plr.9
 for <barebox@lists.infradead.org>; Wed, 03 Mar 2021 05:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pIhB0bJu41uVvngYYT0NTcQhJNYdmr0Au3krz82BP3A=;
 b=QxTwBKX8jb8KR6SM4p3m/nri4i22f5J7GWyQs/teJgC1/KfeBvZJdqNVuOL6KLbcHm
 o74rtlwFJ3LXA7RAvngcNicf+py4ComqGJOhCYqZueuSRFU+K6ZdGp1oWRbIr++BEaqD
 VmWqvpY/2mqM/af4fmGQFtxEjciwkhlPjc4hZfMw0riZoSdaFNDhFwDYYEAv93nuE3gp
 z90ljU7T/hey8PmcvkCw3Ads1Cg2em1drhigRobXDh4j+/DFUzmG5VIzi6bd8pF9tZOP
 AajRSa8Dq8nP4o/b7phVApWEnX3mo1d7GEpOUINjj7byOQ09dnNlKVpSzoQbql5A7ps6
 3LOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=pIhB0bJu41uVvngYYT0NTcQhJNYdmr0Au3krz82BP3A=;
 b=rQlsq7dvFukSORnbOaPuH+44eZhoZ/1i34+B5/VfMp0mu+woiOuhuOmqUYT0dzLvxr
 uUku9Joq4PJxZkRTCjNm26quYkBRqc2l+n2xrFNvODbkK2lURoatWLWJGdrNskr/gg7x
 n1+SfCPE5RQCWYbDWyX9PXe1ryAZWWz6AlZTbEKm2YNfR2XqODEJUt9+W1mIfmtsDGVs
 YsJ3vaiT9WEZii1LFUNHWA9+syac/QoDgt/yf6wFdjMevDJgn24n/SM9Y1kklQQO8+ar
 kTgJv0lhf1UuVurKmJ6RqKGa4wM+sZaNf8KCeQHfxZdAiHuwuUoEbW3JHgkdaYSEVAGW
 vIRw==
X-Gm-Message-State: AOAM530Q4da8OHmYI7p1+/EL/JB4+rLjDSJpcZ4W13k94aUBPwAmX7nE
 3aqOknbzOaotyAPHiRGSTZrJZ97tSZA=
X-Google-Smtp-Source: ABdhPJylNVDLGtZSKNuR5qKOMb0y2PhuviI+7osL5RdGkofYdwwQ6gJtqQXUgMGuUBft+ccK04iIwg==
X-Received: by 2002:a17:90b:253:: with SMTP id
 fz19mr9636374pjb.160.1614779437563; 
 Wed, 03 Mar 2021 05:50:37 -0800 (PST)
Received: from localhost (g98.115-65-200.ppp.wakwak.ne.jp. [115.65.200.98])
 by smtp.gmail.com with ESMTPSA id y4sm24995676pfb.34.2021.03.03.05.50.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 03 Mar 2021 05:50:36 -0800 (PST)
From: Stafford Horne <shorne@gmail.com>
To: Barebox <barebox@lists.infradead.org>
Date: Wed,  3 Mar 2021 22:50:22 +0900
Message-Id: <20210303135026.3450789-1-shorne@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
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
Cc: Openrisc <openrisc@lists.librecores.org>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>, Stafford Horne <shorne@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] OpenRISC fixes and setjmp/longjmp work
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

These are the patches I came up with to get the setjmp/longjmp routines to work
on OpenRISC.  It seems to be working well.

The patches are on github here:
  https://github.com/stffrdhrn/barebox/tree/openrisc-bthread

I had to revert a commit to remove openrisc to do this work, I hope that can be
reverted.

Test output:

    barebox@or1ksim:/ bthread -v
    bthread_printer yield #1
    bthread_printer yield #2
    bthread_printer yield #3
    bthread_printer yield #4
    36441 bthread yield calls in 1s
    barebox@or1ksim:/ bthread -v
    bthread_printer yield #1
    bthread_printer yield #2
    bthread_printer yield #3
    bthread_printer yield #4
    36504 bthread yield calls in 1s
    barebox@or1ksim:/ bthread

    bthread - print info about registered bthreads

    print info about registered barebox threads

    Options:
	    -i      Print information about registered bthreads
	    -t      measure how many bthreads we currently run in 1s
	    -c      count maximum context switches in 1s
	    -v      verify correct bthread operation

    barebox@or1ksim:/ bthread -c
    bthread -c
    269536 bthread context switches possible in 1s

Stafford Horne (4):
  openrisc: Use movhi to zero registers
  openrisc: Add gitignore for dtb files
  openrisc: Add linkage.h
  openrisc: Implement setjmp/longjmp/initjmp

 arch/openrisc/Kconfig               |  1 +
 arch/openrisc/cpu/start.S           |  6 ++--
 arch/openrisc/dts/.gitignore        |  1 +
 arch/openrisc/include/asm/linkage.h |  7 ++++
 arch/openrisc/include/asm/setjmp.h  | 17 +++++++++
 arch/openrisc/lib/Makefile          |  1 +
 arch/openrisc/lib/setjmp.S          | 56 +++++++++++++++++++++++++++++
 7 files changed, 86 insertions(+), 3 deletions(-)
 create mode 100644 arch/openrisc/dts/.gitignore
 create mode 100644 arch/openrisc/include/asm/linkage.h
 create mode 100644 arch/openrisc/include/asm/setjmp.h
 create mode 100644 arch/openrisc/lib/setjmp.S

-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

