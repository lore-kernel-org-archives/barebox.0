Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
 helo=mo3.mail-out.ovh.net)
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SEfWs-0003iD-Oa
 for barebox@lists.infradead.org; Mon, 02 Apr 2012 11:34:36 +0000
Received: from mail622.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with SMTP id 30AEEFF997C
 for <barebox@lists.infradead.org>; Mon,  2 Apr 2012 13:35:11 +0200 (CEST)
Date: Mon, 2 Apr 2012 13:18:58 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20120402111858.GE8116@game.jcrosoft.org>
References: <20120330042713.GX444@game.jcrosoft.org>
 <1333081913-19168-3-git-send-email-plagnioj@jcrosoft.com>
 <20120330092144.GY3852@pengutronix.de>
 <20120330101432.GA8116@game.jcrosoft.org>
 <20120402104906.GU3852@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20120402104906.GU3852@pengutronix.de>
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

On 12:49 Mon 02 Apr     , Sascha Hauer wrote:
> On Fri, Mar 30, 2012 at 12:14:32PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > On 11:21 Fri 30 Mar     , Sascha Hauer wrote:
> > > >  					setenv("bootfile", str);
> > > >  			}
> > > >  			break;
> > > > +		case 150:	/* TFTP server ip or Etherboot*/
> > > > +			if (oplen == sizeof(IPaddr_t)) {
> > > > +				is_tftpserverip = true;
> > > > +				ip = net_read_ip(popt + 2);
> > > > +				net_set_serverip(ip);
> > > > +				setenv_ip("tftp_server_ip", ip);
> > > > +			} else {
> > > > +				memcpy(str, popt + 2, oplen);
> > > > +				str[oplen] = 0;
> > > > +				setenv("etherboot_file", str);
> > > > +			}
> > > 
> > > This seems fragile. What if the etherboot filename has a length of 4?
> > agree but this is really unlikely and I did want to add an option in the
> > client to ask a file name
> > 
> > And we can not detect it via the DHCP RFC
> 
> For tftp server ip it's not one server ip but a list of server ips, so
> the check for sizeof(IPaddr_t) is not even correct, you must check for
> multiple of sizeof(IPaddr_t) which makes the above code even more
> fragile. No way to accept this.
yeah because option 150 is use by etherboot when they do not respect the RFC
and nearly no dhcp server send more than one server ip via options 150

Best Regards,
J.

> 
> Sascha
> 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
