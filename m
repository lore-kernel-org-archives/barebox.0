Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from eddie.linux-mips.org ([148.251.95.138] helo=cvs.linux-mips.org)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcvLw-0004my-NQ
 for barebox@lists.infradead.org; Sun, 24 May 2020 18:28:06 +0000
Received: (from localhost user: 'ladis' uid#1021 fake: STDIN
 (ladis@eddie.linux-mips.org)) by eddie.linux-mips.org
 id S23992512AbgEXS16oQxNc (ORCPT
 <rfc822;barebox@lists.infradead.org>);
 Sun, 24 May 2020 20:27:58 +0200
Date: Sun, 24 May 2020 20:27:54 +0200
From: Ladislav Michl <ladis@linux-mips.org>
Message-ID: <20200524182754.GA9740@lenoch>
References: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <69ca4999-4cf0-f20a-5d7a-93e470338bf4@arcor.de>
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
Subject: Re: configure the mac address of an eth device
To: Giorgio <giorgio.nicole@arcor.de>
Cc: Barebox List <barebox@lists.infradead.org>

On Sun, May 24, 2020 at 01:57:08PM +0200, Giorgio wrote:
> Hi,
> 
> I'm working with an arm som with an imx7d soc on it.
> The som also has an eeprom with some module specific manufacturer parameters
> like two MAC address, for eth0 and eth1, a module description string or a module
> serial number.
> I've now added some code to my board.c to extract the strings from the eeprom and now
> I need to actually configure the MAC addresses from them, to avoid barebox choose
> random ones when it needs the eth's.
> 
> What is the proper way to do this ?

Device tree... See nvmem-cells property of ethernet-controller node.

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
