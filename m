Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from post.merula.co.uk ([217.146.97.9])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VmJFp-0001EL-Un
 for barebox@lists.infradead.org; Fri, 29 Nov 2013 08:16:51 +0000
From: John Parker <John.Parker@lucyautomation.co.uk>
Date: Fri, 29 Nov 2013 08:16:21 +0000
Message-ID: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467F8@AUTOSERVER1.auto.local>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <20131127130236.GX24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346765@AUTOSERVER1.auto.local>
 <20131127210115.GZ24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467EB@AUTOSERVER1.auto.local>
 <20131128162219.GT32436@tarshish>
In-Reply-To: <20131128162219.GT32436@tarshish>
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
Subject: RE: FW: Barebox on Karo TX25
To: Baruch Siach <baruch@tkos.co.il>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi Baruch

Thank you for this. I've now found this info in the reference manual - not under the watchdog section but elsewhere - under the boot modes.

So now I can concentrate on why the zbarebox.bin wont run!

Regards

John




-----Original Message-----
From: Baruch Siach [mailto:baruch@tkos.co.il] 
Sent: 28 November 2013 16:22
To: John Parker
Cc: Sascha Hauer; barebox@lists.infradead.org
Subject: Re: FW: Barebox on Karo TX25

Hi John,

On Thu, Nov 28, 2013 at 04:13:34PM +0000, John Parker wrote:
> I still have a problem with barebox freezing. 
> 
> I've tried various things as you have suggested, but have not got any further.
> 
> Issuing wd 100, followed by wd repeated every few seconds seems to 
> keep the system alive so it looks like the watchdog is to blame.
> 
> According to the mx25 reference manual the watchdog is disabled until 
> it is enabled by setting the WDE bit.
> 
> I can't find anything (yet) in the startup which enables the watchdog 
> by default?
> 
> Does the flash header you sent me include anything which enables the 
> watchdog?

When the i.MX25 boots using the serial protocol boot mode (either UART or USB) the watchdog gets enabled automatically. You can't disable it.

baruch

-- 
     http://baruch.siach.name/blog/                  ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.2.679.5364, http://www.tkos.co.il -

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
