Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from moutng.kundenserver.de ([212.227.126.171])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1SqjTO-0006cn-DX
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 11:28:19 +0000
Message-ID: <5003FACD.80400@cmotion.eu>
Date: Mon, 16 Jul 2012 13:28:13 +0200
From: Christian Kapeller <christian.kapeller@cmotion.eu>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: tx51 ethernet regression
To: barebox@lists.infradead.org

Hi,

I recently came to update my barebox port based on the karo tx51 imx
module from v2012.03.0 to v2012.07.0.

I discovered, that, when trying to use the ethernet connection, I more
often than not get frame errors reported by the FEC.

--snip--
barebox@Ka-Ro tx51:/ dhcp
phy0: Link is up - 1000/Full
error frame: 0x97b961c0 0x00000890
error frame: 0x97b96188 0x00000882
DHCP client bound to address 10.41.14.147
--snap--

The errors range from 'non octet aligned frame' over 'Fifo overrun' to
timeouts. It renders the ethernet support unusable. Small images may
work but, require the one and other retry.

One thing that catches my eye is that the auto negotioation resulted in
a 1000MBit link. The imx fec does only support 100MBit. I forced the
link to be set to 10MBit by declaring xcv_type=MII10 in the
fec_platform_data structure. Interestingly the link is now reported as
100MBit, and shows the same behaviour.

Another thing I checked was the changed pad definitions in commit
2bdc9f57a86dff41cfc1f87b644a2e53fdcce2b6. Not only the type of the pad
data structure changed, but also some of their configuration as well.
For example, pads that were configured with FEC_PAD_CTL, now have other
settings enabled.

I'reverted the pad changes, but still no luck. Auto negtiation starts,
but I don't seem to get any packets.

So my question is: What change since v2012.03.0 could cause this kind of
behaviour?

Regards
Christian


-- 
Christian Kapeller
cmotion GmbH
Kriehubergasse 16
1050 Wien / Austria
http://www.cmotion.eu

christian.kapeller@cmotion.eu
Phone: +43 1 789 1096 38


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
