Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail.e-mind.com ([188.94.192.39])
 by bombadil.infradead.org with smtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1abnf7-00044M-By
 for barebox@lists.infradead.org; Fri, 04 Mar 2016 11:12:50 +0000
References: <56D831C6.1010101@eurek.it>
 <20160303165252.0911b6cb49599a5bc06090ca@gmail.com>
 <56D8406E.6020208@eurek.it>
 <20160303182135.38aa4d322e15c5dfb3a266dc@gmail.com>
From: gianluca <gianlucarenzi@eurek.it>
Message-ID: <56D96D8A.3090707@eurek.it>
Date: Fri, 4 Mar 2016 12:12:10 +0100
MIME-Version: 1.0
In-Reply-To: <20160303182135.38aa4d322e15c5dfb3a266dc@gmail.com>
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
Subject: Re: Ethernet PHY KSZ9031 is not working [SOLVED]
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

On 03/03/2016 04:21 PM, Antony Pavlov wrote:
> On Thu, 3 Mar 2016 14:47:26 +0100
> gianluca <gianlucarenzi@eurek.it> wrote:
>
>> On 03/03/2016 02:52 PM, Antony Pavlov wrote:
>>
>> Before digging on the Datasheet for the explanation of all MII PHY
>> registers, here is the output of the command you wrote above:
>>
>>> barebox@EK360 Eurek i.MX6 Quad:/ miitool -v -v
>>> phy0: 2188000.ethernet-1: no link
>>> registers for MII PHY:
>>> 1140 7949 0022 1622 01e1 0000 0006 2001
>>> 0000 0300 0000 0000 0000 0000 0000 3000
>>> 0000 00f4 0000 0000 0000 0000 0000 0200
>>> 0000 0000 0000 0028 0000 0000 0000 0301
>>> product info: Micrel KSZ9031 Gigabit PHY (vendor 00:08:85, model 34 rev 2)
>>> basic mode: autonegotiation enabled
>>> basic status: no link
>
>
> 'no link' here, so please check your magnetics and RJ-45 connector.
>

I found the problem. I did a wrong connection (PCB) between common line 
of the magnetics to the ethernet-vcc line. This line has to be connected 
ONLY to the GND with a single 10nF capacitor only.

When connecting to a Gigabit Ethernet switch:

> barebox@EK360 Eurek i.MX6 Quad:/ dhcp
> warning: No MAC address set. Using random address 8e:0c:97:9d:0d:fd
> eth0: 1000Mbps full duplex link detected
> T T T DHCP client bound to address 192.168.143.194


When connecting to a 100Mb Ethernet switch:

> barebox@EK360 Eurek i.MX6 Quad:/ dhcp
> warning: No MAC address set. Using random address 2e:a7:4d:11:f2:65
> ksz9031rn_phy_fixup Called
> ksz9031rn_phy_fixup Exit
> eth0: 100Mbps full duplex link detected
> T DHCP client bound to address 192.168.1.165

Right now, I have no 10Mb HUB but who cares? I will face the problem (if 
any) when somebody will point me this issue... ;-)

I would to thank everybody on the mailing list for all hints!

The next step is to calibrate the skew-rate of the lines (if needed) 
when facing some problems during high load transfer in both modes 
(100/1000) but for this I need to boot up in Linux first.

Next step is to connect a USB Disk and try to mount it...

Stay tuned! ;-)

Best regards,
Gianluca
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
