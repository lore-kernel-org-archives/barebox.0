Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X2PMp-0004vS-4t
 for barebox@lists.infradead.org; Wed, 02 Jul 2014 18:34:51 +0000
Date: Wed, 2 Jul 2014 14:34:23 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <CAOpc7mGjpe+EGtuHgvDOkWXW4Dvn1BXSrCeWznV9k_M_nNS69g@mail.gmail.com>
Message-ID: <alpine.LFD.2.11.1407021427020.3327@localhost>
References: <alpine.LFD.2.11.1407010832100.28138@localhost>
 <CAOpc7mHhFazCDMQqq8w3hUkRjzovvtSBksYdjwDdkV+LEDb7bA@mail.gmail.com>
 <1404297715.5300.44.camel@coredoba.hi.pengutronix.de>
 <CAOpc7mGjpe+EGtuHgvDOkWXW4Dvn1BXSrCeWznV9k_M_nNS69g@mail.gmail.com>
MIME-Version: 1.0
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
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, 2 Jul 2014, Holger Schurig wrote:

> > I don't think that the Kconfig entries need to contain the full command
> > documentation.
>
> Probably not.
>
> Currently, too many Kconfig options don't have help texts. When I was
> new to Barebox, I was puzzled about wether to select an option or not.
> Having the complete docs (manually done or auto-generated, doesn't
> matter) can be a good help for that.
>
> It's unfortunate that we have now actually 3 places for the help: via
> macros in the source, in the Kconfig, and in the *.rst files. The one
> in the source code also have an additional property: that options to
> commands can depend on Kconfig entries (e.g. "bootm" depends on
> CONFIG_CMD_BOOTM_INITRD, CONFIG_OFTREE and CONFIG_CMD_BOOTM_VERBOSE).
> That complicates matters even more. Sigh.

  gosh, i didn't mean to open quite this can of worms. i'll let those
higher up the food chain decide how to deal with this. i have more
patches to the user manual coming shortly.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
