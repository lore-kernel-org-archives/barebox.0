Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yk0-x232.google.com ([2607:f8b0:4002:c07::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2IzK-0006qB-0W
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 11:46:10 +0000
Received: by mail-yk0-f178.google.com with SMTP id q9so6506783ykb.9
 for <barebox@lists.infradead.org>; Wed, 02 Jul 2014 04:45:48 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <1404297715.5300.44.camel@coredoba.hi.pengutronix.de>
References: <alpine.LFD.2.11.1407010832100.28138@localhost>
 <CAOpc7mHhFazCDMQqq8w3hUkRjzovvtSBksYdjwDdkV+LEDb7bA@mail.gmail.com>
 <1404297715.5300.44.camel@coredoba.hi.pengutronix.de>
Date: Wed, 2 Jul 2014 13:45:48 +0200
Message-ID: <CAOpc7mGjpe+EGtuHgvDOkWXW4Dvn1BXSrCeWznV9k_M_nNS69g@mail.gmail.com>
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
Subject: Re: generated command references sometimes render a solid blob of text
To: =?ISO-8859-1?Q?Jan_L=FCbbe?= <jlu@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

> I don't think that the Kconfig entries need to contain the full command
> documentation.

Probably not.

Currently, too many Kconfig options don't have help texts. When I was
new to Barebox, I was puzzled about wether to select an option or not.
Having the complete docs (manually done or auto-generated, doesn't
matter) can be a good help for that.

It's unfortunate that we have now actually 3 places for the help: via
macros in the source, in the Kconfig, and in the *.rst files. The one
in the source code also have an additional property: that options to
commands can depend on Kconfig entries (e.g. "bootm" depends on
CONFIG_CMD_BOOTM_INITRD, CONFIG_OFTREE and CONFIG_CMD_BOOTM_VERBOSE).
That complicates matters even more. Sigh.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
