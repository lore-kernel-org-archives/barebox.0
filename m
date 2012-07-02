Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SlbZV-0000GL-Gz
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 08:01:27 +0000
Received: from coredoba.hi.pengutronix.de ([2001:6f8:1178:2:219:99ff:fe56:8d7])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jlu@pengutronix.de>) id 1SlbZL-0005VF-CC
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 10:01:15 +0200
Received: from jlu by coredoba.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jlu@pengutronix.de>) id 1SlbZL-0001F4-8F
 for barebox@lists.infradead.org; Mon, 02 Jul 2012 10:01:15 +0200
Message-ID: <1341216075.3376.14.camel@coredoba.hi.pengutronix.de>
From: Jan =?ISO-8859-1?Q?L=FCbbe?= <jlu@pengutronix.de>
Date: Mon, 02 Jul 2012 10:01:15 +0200
In-Reply-To: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
References: <CAAfyv37Xm7MAuTToGeDr56gTYBVy6ZJTnXf=vcX3HmZfCoNkZw@mail.gmail.com>
Mime-Version: 1.0
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
Subject: Re: panda board crash when detecting usb devices
To: barebox@lists.infradead.org

Hi,

On Mon, 2012-07-02 at 00:53 +0200, Belisko Marek wrote:
> In current next there is issue with usb command on panda board:
*snip*
> It is crashing in ehci_halt() in first ehci_read call. IMO ehci_read
> access wrong memory (that is reason do data_abort?)
> I have rev. A2. Any ideas?

I had a problem with USB on the BeagleBoard: 
Message-id: <20120623232159.GA30515@pengutronix.de>
Subject: Regression for the Beagle Board

For the BeagleBoard this change results in conflicting resource ranges.

Sascha added a check in a6e358b2f5b219fda18a7bc9348cb969043c19d5, maybe
a NULL return value from dev_request_mem_region is not handled correctly
in the driver?

Regards,
Jan

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
