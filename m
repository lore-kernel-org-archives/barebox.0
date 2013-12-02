Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from post.merula.co.uk ([217.146.97.9])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VnPbk-0007CT-O0
 for barebox@lists.infradead.org; Mon, 02 Dec 2013 09:16:01 +0000
From: John Parker <John.Parker@lucyautomation.co.uk>
Date: Mon, 2 Dec 2013 09:13:31 +0000
Message-ID: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346830@AUTOSERVER1.auto.local>
References: <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346735@AUTOSERVER1.auto.local>
 <20131127130236.GX24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D346765@AUTOSERVER1.auto.local>
 <20131127210115.GZ24559@pengutronix.de>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467EB@AUTOSERVER1.auto.local>
 <20131128162219.GT32436@tarshish>
 <EAF1F21DA385DA4797F21C5DCAEF6BAC467D3467F8@AUTOSERVER1.auto.local>
 <20131129094623.GB24559@pengutronix.de>  
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
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: "barebox@lists.infradead.org" <barebox@lists.infradead.org>

Hi again

So now my problem is that I really could do with the LED and UBIFS stuff that happened since February.

Should I try to fix mx25 in the latest code, or undo the problematic commit?

Regards

John

-----Original Message-----
From: John Parker 
Sent: 29 November 2013 10:42
To: 'Sascha Hauer'
Cc: 'Baruch Siach'; 'barebox@lists.infradead.org'
Subject: RE: FW: Barebox on Karo TX25

Fantastic! That works!

Many thanks

Regards

John

-----Original Message-----
From: John Parker 
Sent: 29 November 2013 10:27
To: 'Sascha Hauer'
Cc: Baruch Siach; barebox@lists.infradead.org
Subject: RE: FW: Barebox on Karo TX25

Thank you Sascha, I'll give that a go and report back

Regards

John

-----Original Message-----
From: Sascha Hauer [mailto:s.hauer@pengutronix.de] 
Sent: 29 November 2013 09:46
To: John Parker
Cc: Baruch Siach; barebox@lists.infradead.org
Subject: Re: FW: Barebox on Karo TX25

On Fri, Nov 29, 2013 at 08:16:21AM +0000, John Parker wrote:
> Hi Baruch
> 
> Thank you for this. I've now found this info in the reference manual - not under the watchdog section but elsewhere - under the boot modes.
> 
> So now I can concentrate on why the zbarebox.bin wont run!

Sorry, John. I can confirm the startup is broken since:

commit cf4271ee12f8ce61598a327a72026226441dca72
Author: Sascha Hauer <s.hauer@pengutronix.de>
Date:   Thu Jan 24 17:09:00 2013 +0100

    ARM i.MX: prepare external nand boot for SoC specific entry
    
    i.MX will get SoC specific entry points for barebox. To find the
    correct one we have to call these from the SoC specific
    imx*_barebox_boot_nand_external functions.
    
    Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Unfortunately I haven't figured out yet how to fix this. For now you could go back before this commit by checking out cf4271ee12f8ce61598a~1. This should work.

Sascha

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
