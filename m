Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from qmail34.e-mind.com ([188.94.192.34] helo=qmail.e-mind.com)
 by bombadil.infradead.org with smtp (Exim 4.87 #1 (Red Hat Linux))
 id 1dQWN2-0004IW-D3
 for barebox@lists.infradead.org; Thu, 29 Jun 2017 10:08:23 +0000
References: <63687e34-f354-81d3-aed7-1a59866925c5@eurekelettronica.it>
 <2f43179e-2aa0-1dba-eafa-a9c0025afd24@eurekelettronica.it>
 <1487689380.2268.18.camel@pengutronix.de>
 <82857526-9f9a-2878-9b8e-070f124e2a41@eurekelettronica.it>
 <20170621063246.wdfct6r2boyx4xo3@pengutronix.de>
 <126e2527-f179-0c82-c384-c6c975a7c8e9@eurekelettronica.it>
 <1498045832.2904.105.camel@pengutronix.de>
 <3f12f02e-cccc-1edb-94d1-8cff2b69c808@eurekelettronica.it>
 <1498059009.2904.108.camel@pengutronix.de>
 <aaba2d2b-6d53-07a7-bfdd-f70c22ad13c6@eurekelettronica.it>
 <f950d875-85a7-988a-5425-441a05339a7c@eurekelettronica.it>
 <1498466766.2414.5.camel@pengutronix.de>
 <5e3f93ae-e91a-8e89-9979-e90584c5ad3d@eurekelettronica.it>
 <228fff5b-6629-368c-b491-34cc37e4ee8e@eurekelettronica.it>
 <1498725475.2315.29.camel@pengutronix.de>
From: gianluca <gianlucarenzi@eurekelettronica.it>
Message-ID: <d824085a-c1db-a97b-1103-dd84c2892970@eurekelettronica.it>
Date: Thu, 29 Jun 2017 12:07:55 +0200
MIME-Version: 1.0
In-Reply-To: <1498725475.2315.29.camel@pengutronix.de>
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
Subject: Re: Fwd: Barebox 2017.02 works great but no Linux Framebuffer... :-/
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org

On 06/29/2017 10:37 AM, Lucas Stach wrote:
> Am Mittwoch, den 28.06.2017, 18:55 +0200 schrieb gianluca:
>> On 06/26/2017 03:28 PM, gianluca wrote:
>>>>
>>>> Your kernel is too old. Full support for the QuadPlus is a really
>>>> recent addition. Either update your kernel to 4.12-rc, or add
>>>> "clk_ignore_unused" to get at least basic functionality working.
>>>>
>>>
>>>
>>> Now I am compiling the 4.12-rc7. Hope this helps.
>>>
>>> I will keep you informed about that...
>>>
>>
>>
>> Now I am using the kernel 4.12-rc7 as the time of this writing.
>
> And now your devicetree is too old, it's missing the PRE/PRG nodes on
> imx6qp.
>

Now, it works. After adding in the /soc node and in the ipu node the 
pre[x] and prg[x] stuff, it works.

Are those parameters defined in the device-tree present in the latest 
Barebox 2017.06.[whatever]?? If so, next step is use the latest Barebox...

Now the only issue is how to fix the volume/dac/pcm value in alsa...


> # amixer
> Simple mixer control 'Headphone',0
>   Capabilities: pvolume pswitch pswitch-joined
>   Playback channels: Front Left - Front Right
>   Limits: Playback 0 - 127
>   Mono:
>   Front Left: Playback 127 [2147483647%] [12.00dB] [on]
>   Front Right: Playback 63 [2147483647%] [-20.00dB] [on]
> Simple mixer control 'Headphone Mux',0
>   Capabilities: enum
>   Items: 'DAC' 'LINE_IN'
>   Item0: 'DAC'
> Simple mixer control 'Headphone Playback ZC',0
>   Capabilities: pswitch pswitch-joined
>   Playback channels: Mono
>   Mono: Playback [on]
> Simple mixer control 'PCM',0
>   Capabilities: pvolume
>   Playback channels: Front Left - Front Right
>   Limits: Playback 0 - 192
>   Mono:
>   Front Left: Playback 1 [2147483647%]
>   Front Right: Playback 0 [2147483647%]
> Simple mixer control 'Lineout',0
>   Capabilities: pvolume pswitch pswitch-joined
>   Playback channels: Front Left - Front Right
>   Limits: Playback 0 - 31
>   Mono:
>   Front Left: Playback 18 [2147483647%] [-6.50dB] [on]
>   Front Right: Playback 18 [2147483647%] [-6.50dB] [on]
> Simple mixer control 'Mic',0
>   Capabilities: volume volume-joined
>   Playback channels: Mono
>   Capture channels: Mono
>   Limits: 0 - 3
>   Mono: 0 [2147483647%] [0.00dB]
> Simple mixer control 'Capture',0
>   Capabilities: cvolume
>   Capture channels: Front Left - Front Right
>   Limits: Capture 0 - 15
>   Front Left: Capture 0 [2147483647%]
>   Front Right: Capture 0 [2147483647%]
> Simple mixer control 'Capture Attenuate Switch (-6dB)',0
>   Capabilities: pswitch pswitch-joined
>   Playback channels: Mono
>   Mono: Playback [off]
> Simple mixer control 'Capture Mux',0
>   Capabilities: enum
>   Items: 'MIC_IN' 'LINE_IN'
>   Item0: 'MIC_IN'
> Simple mixer control 'Capture ZC',0
>   Capabilities: pswitch pswitch-joined
>   Playback channels: Mono
>   Mono: Playback [on]

2147483647% looks like an max-int value 0x7FFFFFFF...

Regards,
-- 
Eurek s.r.l.                          |
Electronic Engineering                | http://www.eurek.it
via Celletta 8/B, 40026 Imola, Italy  | Phone: +39-(0)542-609120
p.iva 00690621206 - c.f. 04020030377  | Fax:   +39-(0)542-609212

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
