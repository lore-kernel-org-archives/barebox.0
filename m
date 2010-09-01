Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from tango.tkos.co.il ([62.219.50.35])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oqi9b-0007Zl-RP
	for barebox@lists.infradead.org; Wed, 01 Sep 2010 07:54:45 +0000
Date: Wed, 1 Sep 2010 10:54:25 +0300
From: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20100901075425.GB2464@tarshish>
References: <AANLkTimCj2t-uUJ0vce9rgvwXZnFYtVxkHH2CNwdOkta@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AANLkTimCj2t-uUJ0vce9rgvwXZnFYtVxkHH2CNwdOkta@mail.gmail.com>
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
Subject: Re: barebox: write a file to /dev/ubi0
To: Nataraj S Narayan <natarajsn@gmail.com>
Cc: barebox@lists.infradead.org

Hi Nataraj,
On Wed, Sep 01, 2010 at 12:12:35PM +0530, Nataraj S Narayan wrote:
> tftp gives
> 
> 9263-EK:/ tftp rootfs.ubifs
> TFTP from server 192.168.0.200 ('rootfs.ubifs' -> 'rootfs.ubifs')
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         #################################################################
>         ###########################################################write:
> Out of memory
> 
> tftp failed: error -12
> 
> Any other way to get the file and do a nand write?

Just do 'tftp rootfs.ubifs /dev/ubi0'.

baruch


-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
