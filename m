Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp141.dfw.emailsrvr.com ([67.192.241.141])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c45T3-0003TN-W9
 for barebox@lists.infradead.org; Tue, 08 Nov 2016 12:25:36 +0000
References: <29eaf37e-819f-dfdd-0403-350682193845@mev.co.uk>
 <20161108085957.qqvl2ojnllll6hjn@pengutronix.de>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <276993d3-bc24-3934-92e2-e5bf1a410d25@mev.co.uk>
Date: Tue, 8 Nov 2016 12:25:10 +0000
MIME-Version: 1.0
In-Reply-To: <20161108085957.qqvl2ojnllll6hjn@pengutronix.de>
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
Subject: Re: Designware MAC reset timeout after Linux reboot
To: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Cc: barebox@lists.infradead.org

On 08/11/16 08:59, Steffen Trumtrar wrote:
> Hi!
>
> On Mon, Nov 07, 2016 at 05:56:51PM +0000, Ian Abbott wrote:
>> Hi everyone,
>>
>> I'm using barebox 2016.10.0 with some custom BSP patches for my Cyclone V
>> socfpga based board.  I've noticed that after issuing a reboot in Linux,
>> followed by an 'ifup eth0' command in barebox, I get a "eth0: MAC reset
>> timeout" error, which causes dwc_ether_init() to bail out early. My Linux
>> kernel is Linux 4.1.17, plus LTSI-4.1.17 patches, plus Altera patches from
>> linux-socfpga kernel branch socfpga-4.1.22-ltsi, in that order (git rebase
>> is a wonderful thing!).
>>
>
> FYI: I just tested on a Socrates board with Linux 4.9-rc3 and barebox 2016.08.0
> and can not reproduce your problem. Does that always happen or just sometimes?

It always happens on my board.  I could try reproducing it on a Socrates 
board.  I have a couple of Socrates version 1.2 boards and a Socrates 
2.0 board, so I could try and reproduce the problem if I find time to 
set it up.

My board is actually a prototype.  The PHY clock was originally wired up 
to completely the wrong pin on the FPGA (since it was based on an older 
NiosII based design).  It has been surgically altered so the PHY clock 
is on a different wrong pin, but at least the new pin is clocked at the 
correct frequency.  This may or may not be related to my problem, but 
the PHY seems to work OK before bringing up the MAC controller - miitool 
shows it manages to establish a link at the physical level.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
