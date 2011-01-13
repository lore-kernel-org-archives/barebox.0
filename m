Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1PdP1c-0003P5-7G
	for barebox@lists.infradead.org; Thu, 13 Jan 2011 15:23:44 +0000
From: Juergen Beisert <jbe@pengutronix.de>
Date: Thu, 13 Jan 2011 16:22:20 +0100
References: <1294389316-6569-1-git-send-email-jbe@pengutronix.de>
	<1294389316-6569-10-git-send-email-jbe@pengutronix.de>
	<20110107165128.GA15365@game.jcrosoft.org>
In-Reply-To: <20110107165128.GA15365@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
Message-Id: <201101131622.20925.jbe@pengutronix.de>
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
Subject: Re: [PATCH 09/10] LINUX16: Add selection of the VESA video mode
To: barebox@lists.infradead.org

Jean-Christophe PLAGNIOL-VILLARD wrote:
> >  		}
> >  	}
> >
> > @@ -227,6 +243,14 @@ static int do_linux16(struct command *cmdtp, int
> > argc, char *argv[]) goto on_error;
> >  	}
> >
> > +	/*
> > +	 * The kernel does not check for the "vga=<val>" kernel command line
> > +	 * parameter anymore. It expects this kind of information in the
> > +	 * boot parameters instead.
> > +	 */
> > +	if (vid_mode != NORMAL_VGA)
> > +		lh->vid_mode = vid_mode;
> > +
> >  	/* If SETUP_SECTS is not set, set it to the default.  */
> >  	if (setup_sects == 0) {
> >  		printf("Fixing setup sector count\n");
> > @@ -297,8 +321,9 @@ on_error:
> >  }
> >
> >  BAREBOX_CMD_HELP_START(linux16)
> > -BAREBOX_CMD_HELP_USAGE("linux16 <file>\n")
> > -BAREBOX_CMD_HELP_SHORT("Boot a kernel on x86 via real mode code.\n")
> > +BAREBOX_CMD_HELP_USAGE("linux16 <file> [-v <mode>]\n")
> > +BAREBOX_CMD_HELP_SHORT("Boot a kernel <file> on x86 via real mode
> > code.\n") +BAREBOX_CMD_HELP_OPT  ("-v <mode>",   "VESA video mode number
> > or 'ask'\n") BAREBOX_CMD_HELP_END
> >
> >  /**
> > @@ -307,6 +332,10 @@ BAREBOX_CMD_HELP_END
> >  <p> Only kernel images in bzImage format are supported by now. See \ref
> >  x86_boot_preparation for more info about how to use this command.</p>
> >
> > +<p> For the video mode refer the Linux kernel documentation
> > +'Documentation/fb/vesafb.txt' for correct VESA mode numbers. If the
> > keyword +'ask' instead of a number is given, the starting kernel will ask
> > for a number.
>
> missing </p>?

Hmm, do we really need the "</p>"?

jbe

-- 
Pengutronix e.K.                              | Juergen Beisert             |
Linux Solutions for Science and Industry      | Phone: +49-8766-939 228     |
Vertretung Sued/Muenchen, Germany             | Fax:   +49-5121-206917-5555 |
Amtsgericht Hildesheim, HRA 2686              | http://www.pengutronix.de/  |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
