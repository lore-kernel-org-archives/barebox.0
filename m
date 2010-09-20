Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Oxbca-0004J6-76
	for barebox@lists.infradead.org; Mon, 20 Sep 2010 08:21:08 +0000
Date: Mon, 20 Sep 2010 10:19:49 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20100920081949.GD32018@game.jcrosoft.org>
References: <AANLkTimw-1=r7yLe4dT6=TVFBtePZXRdfjz08ptt0H3D@mail.gmail.com>
	<20100920080231.GB32018@game.jcrosoft.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20100920080231.GB32018@game.jcrosoft.org>
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
Subject: Re: dm9601 USB Network Controller
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

On 10:02 Mon 20 Sep     , Jean-Christophe PLAGNIOL-VILLARD wrote:
> On 13:23 Mon 20 Sep     , Nataraj S Narayan wrote:
> >    Hi  Sascha
> > 
> >    Does barebox support Davicom 9601 USB Network Controller?
> > 
> >    Would like to tftp over this USB gadget. Would suit boards wihtout 
> >    Ethernet Phy.
> no but we have asix usb
> 
> it will be easy to add
I forget we have also USB ECM but I've not yet add the usb device driver for
AT91

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
