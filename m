Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WnMD2-0006QN-1M
 for barebox@lists.infradead.org; Thu, 22 May 2014 06:10:32 +0000
Date: Thu, 22 May 2014 08:10:10 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20140522061010.GQ5858@pengutronix.de>
References: <1400533184-668-1-git-send-email-s.hauer@pengutronix.de>
 <1400533184-668-4-git-send-email-s.hauer@pengutronix.de>
 <CAOpc7mEMKbWg244JHWx3emMr0Mt1VMmkK0gKC97+LS_7jSA6UA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOpc7mEMKbWg244JHWx3emMr0Mt1VMmkK0gKC97+LS_7jSA6UA@mail.gmail.com>
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
Subject: Re: [PATCH 3/6] commands: add of_dump command
To: Holger Schurig <holgerschurig@gmail.com>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On Wed, May 21, 2014 at 03:17:20PM +0200, Holger Schurig wrote:
> > +               -f <dtb>        work on <dtb> instead of internal devicetree
> > +BAREBOX_CMD_HELP_OPT  ("-f <dtb>",  "work on <dtb> instead of internal devicetree\n")
> 
> In my command-rework patches I have used "-f FOO" instead of "-f
> <foo>". Two reasons:
> 
> 1. saves 2 bytes
> 2. less occurences of column align fixup with extra \t needed

Ok, I removed the <>.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
