Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from llsf237-a03.servidoresdns.net ([82.223.190.24])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SdyZ8-0006ts-I5
 for barebox@lists.infradead.org; Mon, 11 Jun 2012 06:57:31 +0000
From: "FQ | Joan Carles Abelaira" <joancarles@fqingenieria.es>
References: <003601cd4580$b388cd70$1a9a6850$@fqingenieria.es>
 <20120608152745.GZ30400@pengutronix.de>
In-Reply-To: <20120608152745.GZ30400@pengutronix.de>
Date: Mon, 11 Jun 2012 08:57:25 +0200
Message-ID: <001a01cd479f$760e6740$622b35c0$@fqingenieria.es>
MIME-Version: 1.0
Content-Language: es
Reply-To: joancarles@fqingenieria.es
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
Subject: RE: make fails with barebox
To: 'Sascha Hauer' <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

> Hi,
> 
> On Fri, Jun 08, 2012 at 04:12:12PM +0200, FQ | Joan Carles Abelaira wrote:
> > Hello,
> >
> > I was working with previous release of barebox, and now I happily got
the
> 2012.06 release.
> > I managed to add my board to the menuconfig, apparently ok, then after a
> 'make' I get this complain:
> >
> > arch/arm/cpu/built-in.o: In function `reset':
> > /home/develop/SID1/dev/dev_sources/barebox-
> 2012.06.0/arch/arm/include/asm/system.h:70: undefined reference to
> `board_init_lowlevel'
> >
> > Any clues about what's missing to not to suffer all weekend because of
> this?
> 
> Appearantly you do not have a board_init_lowlevel function. This is ok,
but
> then you have to disable CONFIG_MACH_DO_LOWLEVEL_INIT
> 
> Sascha

In parallel I got able to make the project by unselecting the option General
Options --> Run Low Level Init  , from the menuconfig.
I checked this sets/ clear that flag. 
Danke schoen


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
