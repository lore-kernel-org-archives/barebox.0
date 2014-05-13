Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x22e.google.com ([2607:f8b0:4002:c07::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WkAsx-00076P-Ad
 for barebox@lists.infradead.org; Tue, 13 May 2014 11:28:39 +0000
Received: by mail-yk0-f174.google.com with SMTP id 9so133332ykp.5
 for <barebox@lists.infradead.org>; Tue, 13 May 2014 04:28:17 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140513152616.037f99e1138c9028878f61f6@gmail.com>
References: <1399969739-10355-1-git-send-email-holgerschurig@gmail.com>
 <1399969739-10355-9-git-send-email-holgerschurig@gmail.com>
 <20140513152616.037f99e1138c9028878f61f6@gmail.com>
Date: Tue, 13 May 2014 13:28:17 +0200
Message-ID: <CAOpc7mHLsLJehMFkcFeJBGodKEJejiDxgwgWZE2V3-=37BbRHQ@mail.gmail.com>
From: Holger Schurig <holgerschurig@gmail.com>
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
Subject: Re: [PATCH 08/19] commands: move CMD_MIPS_CPUINFO to commands/Kconfig
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Hi,

i thought about having exactly one CONFIG_CMD_CPUINFO. No need for
your steps 2. and 3., because both arch/arm/Makefile and
arch/arm/Makefile could do "obj-$(CONFIG_CMD_CPUINFO) += cpuinfo.o",
you cannot compile for ARM and MIPS at the same time anyway.

However, I decided against it. Because then I'd have to remove the
example "cpuinfo" output from them the Kconfig help.

Just that generally I'd like to have output example in the Kconfig, so
that people see at "make xconfig" time if they want this command or
not. I, for example, don't want "cpuinfo", I know which CPU is
soldered into the board :-)

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
