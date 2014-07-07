Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from astoria.ccjclearline.com ([64.235.106.9])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1X44s3-0007Li-4y
 for barebox@lists.infradead.org; Mon, 07 Jul 2014 09:05:59 +0000
Date: Mon, 7 Jul 2014 05:05:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <20140707080738.GM23235@pengutronix.de>
Message-ID: <alpine.LFD.2.11.1407070503470.27781@localhost>
References: <alpine.LFD.2.11.1407061455580.16512@localhost>
 <20140707080738.GM23235@pengutronix.de>
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323328-55432110-1404723934=:27781"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: generated doc "Options" for dhcp command drops last line
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "U-Boot Version 2 (barebox)" <barebox@lists.infradead.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323328-55432110-1404723934=:27781
Content-Type: TEXT/PLAIN; charset="utf-8"
Content-Transfer-Encoding: 8bit

On Mon, 7 Jul 2014, Sascha Hauer wrote:

> On Sun, Jul 06, 2014 at 02:59:09PM -0400, Robert P. J. Day wrote:
> >
> >   just noticed that the sphinx-generated doc page for the "dhcp"
> > command doesn't display the final line because of this in
> > net/dhcp.c:
> >
> > BAREBOX_CMD_HELP_START(dhcp)
> > BAREBOX_CMD_HELP_TEXT("Options:")
> > BAREBOX_CMD_HELP_OPT ("-H HOSTNAME", "hostname to send to the DHCP server")
> > BAREBOX_CMD_HELP_OPT ("-v ID\t", "DHCP Vendor ID (code 60) submitted in DHCP requests")
> > BAREBOX_CMD_HELP_OPT ("-c ID\t", "DHCP Client ID (code 61) submitted in DHCP requests")
> > BAREBOX_CMD_HELP_OPT ("-u UUID\t", "DHCP Client UUID (code 97) submitted in DHCP requests")
> > BAREBOX_CMD_HELP_OPT ("-U CLASS", "DHCP User class (code 77) submitted in DHCP requests")
> > BAREBOX_CMD_HELP_OPT ("-r RETRY", "retry limit (default "__stringify(DHCP_DEFAULT_RETRY)")");
> > BAREBOX_CMD_HELP_END
> >
> >   it's that trailing semicolon on the second last line there,
> > which i suspect shouldn't be there, but if i take it out, the
> > generated line now literally includes
> > "__stringify(DHCP_DEFAULT_RETRY)”, and i'm not sure what to do
> > about that, so if someone wants to fix it, go wild.
>
> I assume that even with the semicolon the sphinx documentation
> doesn't have the correct value for the retry limit, right?

  right ... even after removing that semicolon so that the last line
shows up, it literally contains that "__stringify" stuff.

> We should remove these macro tricks from the command documentation
> defines. In this special case DHCP_DEFAULT_RETRY isn't even
> configurable.

  i'll let someone higher up the food chain decide how to resolve
that.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================
--8323328-55432110-1404723934=:27781
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--8323328-55432110-1404723934=:27781--
