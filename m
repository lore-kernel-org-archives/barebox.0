Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-co1nam11on2104.outbound.protection.outlook.com
 ([40.107.220.104] helo=NAM11-CO1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbJq6-0006wz-7U
 for barebox@lists.infradead.org; Wed, 20 May 2020 08:12:40 +0000
From: "Barbier, Renaud" <renaud.barbier@abaco.com>
Date: Wed, 20 May 2020 08:12:31 +0000
Message-ID: <MN2PR16MB313584995C3AD470E497AC1691B60@MN2PR16MB3135.namprd16.prod.outlook.com>
References: <MN2PR16MB3135D515C95492ACE382152F91B90@MN2PR16MB3135.namprd16.prod.outlook.com>
In-Reply-To: <MN2PR16MB3135D515C95492ACE382152F91B90@MN2PR16MB3135.namprd16.prod.outlook.com>
Content-Language: en-US
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
Subject: RE: DTB overlay
To: "Barbier, Renaud" <renaud.barbier@abaco.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Forgot to mention, I am using v2020.03.

I will see if any newer code fix this error message issue

> -----Original Message-----
> From: barebox [mailto:barebox-bounces@lists.infradead.org] On Behalf Of
> Barbier, Renaud
> Sent: 19 May 2020 18:34
> To: barebox@lists.infradead.org
> Subject: DTB overlay
> 
> 
> 
> [**EXTERNAL SOURCE**]:Please verify the source before clicking link or
> opening attachment.
> 
> Is there a limit on the number of overlay that can be  loaded with the
> of_overlay command?
> 
> It does not complain if I load two overlays. However, when booting my FIT
> image, I get twice the message:
> of_overlay: failed to copy symbols from overlay
> 
> Still all node modifications are added to the base device tree.
> 
> The error message is not displayed if I add only one overlay.
> 
> 
> 
> 
> 
> Cheers,
> Renaud
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
