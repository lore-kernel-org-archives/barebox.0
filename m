Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo4.mail-out.ovh.net ([46.105.72.36]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RDOMq-0000PW-2i
	for barebox@lists.infradead.org; Mon, 10 Oct 2011 22:30:41 +0000
Received: from mail423.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 65776FFAA63
	for <barebox@lists.infradead.org>;
	Tue, 11 Oct 2011 00:31:50 +0200 (CEST)
Date: Tue, 11 Oct 2011 00:06:36 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111010220636.GD18064@game.jcrosoft.org>
References: <20111008141722.GG10459@game.jcrosoft.org>
	<20111009093738.GN31404@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20111009093738.GN31404@pengutronix.de>
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
Subject: Re: [PATCH 0/5] Multi uImage support on ARM
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

On 11:37 Sun 09 Oct     , Sascha Hauer wrote:
> On Sat, Oct 08, 2011 at 04:17:22PM +0200, Jean-Christophe PLAGNIOL-VILLARD wrote:
> > Hi,
> > 
> > 	This the final patch seires to add the Multi uImage support to
> > 	barebox
> > 
> > 	This does not support yet the script type but allow us to boot a uImage
> > 	with a kernel and an initrd inside
> > 
> > 	It will be easy to add the DT support too
> > 
> > 	And enable it on arm.
> > 
> > Jean-Christophe PLAGNIOL-VILLARD (5):
> >       bootm: ensure the uImage is mapped first to allow option to used it
> >       get_fake_image_handle: set nb_data_entries to 1 and update the header size
> >       bootm: add -L option to specify the initrd load address
> >       arm/bootm: enable multi uimage support
> >       defaultenv: add bootm_opt var to allow the board to pass parameter to bootm
> 
> Applied to next.
can we have it on the master it's the second part of the Multi uImage patch
series already present in the master

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
