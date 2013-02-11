Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from f74.mail.ru ([217.69.129.108])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U4piy-0004mz-Oc
 for barebox@lists.infradead.org; Mon, 11 Feb 2013 09:30:58 +0000
From: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
Mime-Version: 1.0
Date: Mon, 11 Feb 2013 13:30:53 +0400
Message-ID: <1360575053.921797761@f74.mail.ru>
In-Reply-To: <20130211084840.GM1906@pengutronix.de>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
 <20130211084840.GM1906@pengutronix.de>
Reply-To: =?UTF-8?B?QWxleGFuZGVyIFNoaXlhbg==?= <shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: =?UTF-8?B?UmVbMl06IFtQQVRDSCAwMS8xMV0gQVJNOiBjbHBzNzExeDogTW92ZSBsb3ds?=
 =?UTF-8?B?ZXZlbCBpbml0aWFsaXphdGlvbiBpbiBjb21tb24gQ0xQUzcxMVggbG9jYXRp?=
 =?UTF-8?B?b24=?=
To: =?UTF-8?B?U2FzY2hhIEhhdWVy?= <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hello.

...
> > diff --git a/arch/arm/boards/clep7212/Makefile b/arch/arm/boards/clep7212/Makefile
> > index a63aeae..676e867 100644
> > --- a/arch/arm/boards/clep7212/Makefile
> > +++ b/arch/arm/boards/clep7212/Makefile
> > @@ -1,2 +1 @@
> > -obj-y += lowlevel.o clep7212.o
> > -pbl-y += lowlevel.o
> > +obj-y += clep7212.o
> > diff --git a/arch/arm/boards/clep7212/lowlevel.c b/arch/arm/boards/clep7212/lowlevel.c
> 
> I think it's better to keep the reset vector in board specific code.
> Then you can have a board specific reset vector, which simply calls
> a SoC specific one. This also solves the Kconfig problem with the
> PLL setup. So you would have this in your board:
> 
> void __naked __bare_init barebox_arm_reset_vector(void)
> {
> 	arm_cpu_lowlevel_init();
> 
> 	clps711x_barebox_entry();
> }
> 
> You could add different more specific clps711x_* functions which will
> result in different CPU speeds, or you could pass a PLL value to the
> entry function, if that better fits your needs.
> 
> The rest of this series looks fine.

Can we leave this basic clps711x_barebox_entry in mach-clps711x/lowlevel.c
and just additionally mark it as "__weak" for ability to override?

---
_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
