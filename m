Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.gnudd.com ([77.43.112.34])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ffn3J-0000Bh-OO
 for barebox@lists.infradead.org; Wed, 18 Jul 2018 14:03:39 +0000
Date: Wed, 18 Jul 2018 16:03:21 +0200
From: Alessandro Rubini <rubini-list@gnudd.com>
Message-ID: <20180718140321.GA28539@mail.gnudd.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
References: <CAPPP46SniSuaZPfHGgb3YyvwDsW2jz6UwXLaNP5XL1PbF8_eWg@mail.gmail.com>
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
Subject: Re: qemu and barebox
To: giuseppe.levi@gmail.com
Cc: barebox@lists.infradead.org

Hello.

> emulate a spacial boot configuration of the CERN White Rabbit switch
> (http://white-rabbit.web.cern.ch/).

The White Rabbit switch is AT91SAM9G45 (I have one on my desk).
Unless your own WR switch is a new design running on cortex-a57, you
shoul cross-compile for arm32 and use a corresponding qemu
configuration.

/alessandro

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
