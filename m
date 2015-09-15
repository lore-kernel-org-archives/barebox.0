Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x236.google.com ([2607:f8b0:4002:c07::236])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zbp3g-0003Aj-F4
 for barebox@lists.infradead.org; Tue, 15 Sep 2015 12:10:00 +0000
Received: by ykdt18 with SMTP id t18so162309255ykd.3
 for <barebox@lists.infradead.org>; Tue, 15 Sep 2015 05:09:39 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <CANvTkNYaWMG0biCUXs+hZNBoPBg6dvS8artP8eo+5pvU_MGSdg@mail.gmail.com>
References: <CANvTkNYaWMG0biCUXs+hZNBoPBg6dvS8artP8eo+5pvU_MGSdg@mail.gmail.com>
Date: Tue, 15 Sep 2015 20:09:38 +0800
Message-ID: <CANvTkNbhiMPRugMSuj5cgAorvPOFM3va3EBocWU7b3MuTVbwTA@mail.gmail.com>
From: Kevin Du Huanpeng <u74147@gmail.com>
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: compile bug about banner and version macros.
To: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

if you can't reproduce this bug, maybe you have generated compile.h
before but make clean did't delete it.
Please pull a fresh source or
1 remove compile.h
2 disable CONFIG_BANNER

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
