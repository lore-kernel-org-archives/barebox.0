Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo3.mail-out.ovh.net ([188.165.43.98]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SDZ5K-0003Wj-Ep
 for barebox@lists.infradead.org; Fri, 30 Mar 2012 10:29:35 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 55337FF8EDF
 for <barebox@lists.infradead.org>; Fri, 30 Mar 2012 12:30:02 +0200 (CEST)
Date: Fri, 30 Mar 2012 12:14:32 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120330101432.GA8116@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
 <1333081913-19168-3-git-send-email-plagnioj@jcrosoft.com>
 <20120330092144.GY3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120330092144.GY3852@pengutronix.de>
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
Subject: Re: [PATCH 3/8] net: dhcp: add support of tftp server ip or
 Etherboot file (option 150)
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:21 Fri 30 Mar     , Sascha Hauer wrote:
> On Fri, Mar 30, 2012 at 06:31:48AM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > if tftp server ip
> > 	Use the tftp server name only if this option is not set.
> > 	Export it also via env tftp_server_ip.
> > else
> > 	Export it via end etherboot_file
> > 
> > E.g. the ISC dhcp server can be configured with
> > 
> >   | option option-150 code 150 = ip-address;
> >   | option option-150-etherboot-file code 150 = string;
> >   |
> >   | class "at91sam9x5ek" {
> >   |         match if substring (option vendor-class-identifier,0,20) = "barebox-at91sam9x5ek";
> >   |
> >   |         filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage";
> >   |         option tftp-server-name "192.168.200.98";
> >   |         option option-150 192.168.200.98;
> >   |         next-server 192.168.200.98;
> >   |         option root-path "192.168.200.98:/opt/work/buildroot/build/sam9x5/target";
> >   |         if substring (option dhcp-client-identifier,0,7) = "ser2net" {
> >   |                 filename "/tftpboot/atmel/at91sam9x5/sam9x5ek/zImage-ser2net";
> >   |                 ption option-150-etherboot-file "/tftpboot/test.sh";
> >   |         }
> >   | }
> > 
> > Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
> > ---
> >  net/dhcp.c |   21 ++++++++++++++++++++-
> >  1 files changed, 20 insertions(+), 1 deletions(-)
> > 
> > diff --git a/net/dhcp.c b/net/dhcp.c
> > index 6728717..adfb4a0 100644
> > --- a/net/dhcp.c
> > +++ b/net/dhcp.c
> > @@ -195,6 +195,8 @@ static int dhcp_extended (u8 *e, int message_type, IPaddr_t ServerID,
> >  	*cnt += 1;
> >  	*e++  = 66;		/* TFTP server name */
> >  	*cnt += 1;
> > +	*e++  = 150;		/* TFTP server ip */
> > +	*cnt += 1;
> >  	*e++  = 255;		/* End of the list */
> >  
> >  	/* Pad to minimal length */
> > @@ -255,6 +257,7 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
> >  	IPaddr_t ip;
> >  	char str[256];
> >  	char tftpname[256];
> > +	bool is_tftpserverip = false;
> >  
> >  	while (popt < end && *popt != 0xff) {
> >  		oplen = *(popt + 1);
> > @@ -327,6 +330,18 @@ static void dhcp_options_process(unsigned char *popt, struct bootp *bp)
> >  					setenv("bootfile", str);
> >  			}
> >  			break;
> > +		case 150:	/* TFTP server ip or Etherboot*/
> > +			if (oplen == sizeof(IPaddr_t)) {
> > +				is_tftpserverip = true;
> > +				ip = net_read_ip(popt + 2);
> > +				net_set_serverip(ip);
> > +				setenv_ip("tftp_server_ip", ip);
> > +			} else {
> > +				memcpy(str, popt + 2, oplen);
> > +				str[oplen] = 0;
> > +				setenv("etherboot_file", str);
> > +			}
> 
> This seems fragile. What if the etherboot filename has a length of 4?
agree but this is really unlikely and I did want to add an option in the
client to ask a file name

And we can not detect it via the DHCP RFC

btw IPaddr_t need to be fix on 64bit

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
