Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 20.mo3.mail-out.ovh.net ([178.33.47.94]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QomDP-0007we-5V
	for barebox@lists.infradead.org; Thu, 04 Aug 2011 00:55:11 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id 1A241FFB0C9
	for <barebox@lists.infradead.org>;
	Thu,  4 Aug 2011 02:56:19 +0200 (CEST)
Date: Thu, 4 Aug 2011 02:37:02 +0200
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Message-ID: <20110804003702.GF24730@game.jcrosoft.org>
References: <1312396666-23348-1-git-send-email-antonynpavlov@gmail.com>
	<1312396666-23348-2-git-send-email-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1312396666-23348-2-git-send-email-antonynpavlov@gmail.com>
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
Subject: Re: [PATCH 2/2] serial_ns16550: use 'struct device_d *' instead of
	'struct console_device *'
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 22:37 Wed 03 Aug     , Antony Pavlov wrote:
> ns16550_read() and ns16550_write() functions are private functions
> of the driver so there is no need to pass them 'struct console_device *'
> pointer to get private device data.
> 
> Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
> ---
Does not simplify the code

does not see the need

Best Regards,
J.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
