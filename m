Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from webbox1416.server-home.net ([77.236.96.61])
 by bombadil.infradead.org with esmtp (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bxV0x-00083p-NH
 for barebox@lists.infradead.org; Fri, 21 Oct 2016 08:17:20 +0000
References: <03214122-b05b-fc45-1e32-ad2832ca36d3@systec-electronic.com>
 <20161014095219.6qsyhajp2bffsc64@pengutronix.de>
From: =?UTF-8?Q?Daniel_Kr=c3=bcger?= <daniel.krueger@systec-electronic.com>
Message-ID: <d6c5169f-788e-ff34-1953-fb9014822a72@systec-electronic.com>
Date: Fri, 21 Oct 2016 10:16:53 +0200
MIME-Version: 1.0
In-Reply-To: <20161014095219.6qsyhajp2bffsc64@pengutronix.de>
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
Subject: Re: Compressed DTB - builtin DTB
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

Am 14.10.2016 um 11:52 schrieb Sascha Hauer:
>
> No, indeed that's not intended. Could you test the appended patch? It
> should solve this.

Thanks. The patch works for me.


>> Just using the compressed DTB would be really good. Because it makes the
>> image much smaller. However, how should that be done? The extract code might
>> be simple. But I don't have an idea how to let the linker select the right
>> version.
>
> If you are using uncompressed binary you should switch to PBL support to
> get a compressed binary. Then, if you are using PBL the dtb is
> compressed already as part of the whole binary.

I will try that.

Best regards,
   Daniel

-- 

SYS TEC electronic GmbH
Am Windrad 2
08468 Heinsdorfergrund

Telefon : +49 (0) 3765 38600-0
Fax     : +49 (0) 3765 38600-4100
Email   : daniel.krueger@systec-electronic.com
Website : http://www.systec-electronic.com

Managing Directors  :
   Dipl.-Phys. Siegmar Schmidt, Dipl. Ing. (FH) Armin von Collrepp
Commercial registry : Amtsgericht Chemnitz, HRB 28082
USt.-Id Nr.         : DE150534010


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
