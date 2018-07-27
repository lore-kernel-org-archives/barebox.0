Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp101.iad3a.emailsrvr.com ([173.203.187.101])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fiyf1-0007Kc-8X
 for barebox@lists.infradead.org; Fri, 27 Jul 2018 09:03:44 +0000
References: <A49D50D39772A245B44D2DDFA61E3E8702088F1D@DCB14.DCBAD.local>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <21d1e8c6-ee9e-53d5-6f91-6bfe5727a567@mev.co.uk>
Date: Fri, 27 Jul 2018 10:03:26 +0100
MIME-Version: 1.0
In-Reply-To: <A49D50D39772A245B44D2DDFA61E3E8702088F1D@DCB14.DCBAD.local>
Content-Language: en-GB
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: kernel ubi boot
To: Dimitri Van Dyck | IndigoCare <Dimitri.VanDyck@indigocare.com>, "barebox@lists.infradead.org" <barebox@lists.infradead.org>

On 26/07/2018 14:52, Dimitri Van Dyck | IndigoCare wrote:
> Is it possible to boot zImage from ubi, and not from raw flash?
> If so, from what version is this supported?
> 
> barebox@Voipac VMX53:/ boot
> booting nand-dtb-ubi
> 
> Loading OS UBI image '/dev/ubi0.kernel'
> using internal devicetree
> no image handler found for image type UBI image

I don't know if it can be booted from ubi, but it can be booted from ubifs.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || Web: www.mev.co.uk )=-
-=( MEV Ltd. is a company registered in England & Wales. )=-
-=( Registered number: 02862268.  Registered address:    )=-
-=( 15 West Park Road, Bramhall, STOCKPORT, SK7 3JZ, UK. )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
