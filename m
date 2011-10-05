Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 6.mo2.mail-out.ovh.net ([87.98.165.38]
	helo=mo2.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1RBXOa-0005mr-FT
	for barebox@lists.infradead.org; Wed, 05 Oct 2011 19:44:49 +0000
Received: from mail180.ha.ovh.net (b6.ovh.net [213.186.33.56])
	by mo2.mail-out.ovh.net (Postfix) with SMTP id 36125DCBB63
	for <barebox@lists.infradead.org>;
	Wed,  5 Oct 2011 21:37:41 +0200 (CEST)
Date: Wed, 5 Oct 2011 21:12:20 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20111005191220.GH20621@game.jcrosoft.org>
References: <4E8C6F3D.40308@ge.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4E8C6F3D.40308@ge.com>
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
Subject: Re: bootm
To: Renaud Barbier <renaud.barbier@ge.com>
Cc: barebox@lists.infradead.org

On 15:52 Wed 05 Oct     , Renaud Barbier wrote:
> Hello,
> I am looking for information on how to boot Linux with a device tree.
> 
> Basically, I have a  uImage and a device tree(dtb) and with U-boot I
> used to do:
> bootm uImage_address -- dtb_address
> 
> How does it work with barebox?
which architecture do you work on ARM/PPC?

on Arm  I'm working on Mutli uImage support but I've not yet add the DTB
support

but you need to understand that on Barebox we do not use address but file
and in the case of the multi image index

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
