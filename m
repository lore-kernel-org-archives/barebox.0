Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from h51baff8c.k3918.sta.perspektivbredband.net ([81.186.255.140]
	helo=fg-dc1.flatfrog.local)
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1POAk9-0003pu-3a
	for barebox@lists.infradead.org; Thu, 02 Dec 2010 15:06:45 +0000
Message-ID: <4CF7B603.6090407@flatfrog.com>
Date: Thu, 2 Dec 2010 16:06:43 +0100
From: Orjan Friberg <of@flatfrog.com>
MIME-Version: 1.0
References: <4CF7AB25.3010604@flatfrog.com>
In-Reply-To: <4CF7AB25.3010604@flatfrog.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Barebox on a 3730
To: barebox@lists.infradead.org

On 2010-12-02 15:20, Orjan Friberg wrote:
> Anyone here rambooted a 3730 with barebox?  (Just to rule out that I
> need to do any software changes.)

I do have an BeagleBoard xM but it seems the user button doesn't affect 
the boot sequence like it did on the original BeagleBoard, so I don't 
have any other hardware to try this on.

> When setting the board in boot mode "60" is printed on the serial port

... with "60" being "\x36\x30" in printable characters.  I did a hexdump 
of the garbled output and its basically a lot of 0xc0 with 0x00 
sprinkled in between.

I'd appreciate any clue as to what's happening.

Thanks,
Orjan

-- 
Orjan Friberg
FlatFrog Laboratories AB

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
