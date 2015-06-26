Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8QLJ-0004xT-U0
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 09:54:43 +0000
Date: Fri, 26 Jun 2015 11:54:18 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20150626095418.GJ18611@pengutronix.de>
References: <20150615011343.40eddc832febd97ade569cbb@gmail.com>
 <20150617092857.GJ6325@pengutronix.de>
 <20150620140912.b8435aff9de4a645f5d4639e@gmail.com>
 <20150622060022.GC6325@pengutronix.de>
 <20150624091147.c4b5aac4be4a90b23c585cc7@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20150624091147.c4b5aac4be4a90b23c585cc7@gmail.com>
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
Subject: Re: barebox picotcp integration (2015.06.14)
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox <barebox@lists.infradead.org>

On Wed, Jun 24, 2015 at 09:11:47AM +0300, Antony Pavlov wrote:
> On Mon, 22 Jun 2015 08:00:22 +0200
> Sascha Hauer <s.hauer@pengutronix.de> wrote:
> 
> > On Sat, Jun 20, 2015 at 02:09:12PM +0300, Antony Pavlov wrote:
> > > On Wed, 17 Jun 2015 11:28:57 +0200
> > > Sascha Hauer <s.hauer@pengutronix.de> wrote:
> > > 
> > > > On Mon, Jun 15, 2015 at 01:13:43AM +0300, Antony Pavlov wrote:
> > > > > Hi!
> > > > > 
> > > > > I have just published latest picotcp-enabled barebox.
> > > > > Please see my 20150614.picotcp branch in my github barebox repo
> > > > > (https://github.com/frantony/barebox/tree/20150614.picotcp).
> > > > > 
> > > ...
> > > > 
> > > > Why are you using the picotcp tftp implementation? picotcp surely
> > > > supports sending/receiving udp packets, right? Wouldn't it be a good
> > > > first step to replace the barebox udp API with the one picotcp provides?
> > > > I mean I would expect that you replace only the network stack, not the
> > > > network stack including the applications. If at some point we decide
> > > > that the tftp implementation in picotcp is better than the one in
> > > > barebox that would be the time to switch it.
> > > > 
> > > 
> > > I have reworked tftp support: now barebox tftp implementation is used on top
> > > of picotcp udp/ip stack and works 2 times slower than original u-boot stack-based
> > > implementation (I have tested it with sandbox arch).
> > 
> > Do you have an idea why this is slower? I had a quick look into it and
> > found nothing obvious.
> > 
> 
> I have added nfs-over-picotcp support, please see https://github.com/frantony/barebox/tree/20150624.picotcp
> 
> I use very simple benchmarks.
> I have sandbox barebox (192.168.1.2) and nfs- and tftp- servers on the same host (192.168.1.1).
> I copy 16MiB (16777216 bytes) file from server to sandbox barebox over network several times.
> I use time command inside sandox barebox for computing transfer time.
> 
> barebox@barebox sandbox:/ eth0.ipaddr=192.168.1.2
> barebox@barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
> ...
> barebox@barebox sandbox:/ time cp /mnt/16M .
> time: 546ms
> 
> Here is typical transfer time values:
> 
> +--------+--------------+--------------+
> |        |   U-boot     |   picotcp    |
> |        |    stack     |    stack     |
> +--------+--------------+--------------+
> |        |              |              |
> |  tftp  |    546ms     |    859ms     |
> |        |              |              |
> +--------+--------------+--------------+
> |        |              |              |
> |  nfs   |   1037ms     |   1393ms     |
> |        |              |              |
> +--------+--------------+--------------+
> 
> There are some rather simple possibilities to slighly improve picotcp-barebox performance:
> 
>   * drop extra memory copy;
>   * drop extra pico_tick() calls (is_timeout() calls poller_call(), so there is no need
>                                   to call poller_call() explicitly in nfs/tftp code);
>   * there is an issue with sustained tftp small file copy. E.g.
> 
>          barebox@barebox sandbox:/ ifconfig eth 192.168.1.2 255.255.255.0
>          Assigned ipv4 192.168.1.2 to device eth
>          barebox@barebox sandbox:/ mount -t tftp 192.168.1.1 /mnt
>          barebox@barebox sandbox:/ while true; do time cp /mnt/1M . ; done
>          ...
>          Warning: I have 122 timers
>          Warning: I have 121 timers
>          time: 48ms
>          Warning: I have 122 timers
>          Warning: I have 121 timers
>          time: 53ms
>          Warning: I have 122 timers
>          Warning: I have 121 timers
>          time: 54ms
> 
> Just now picotcp-enabled barebox uses
> 
>    * ping from picotcp;
>    * dhcp from picotcp;
>    * no DNS support.
> 
> Sascha! Do you think I should use barebox' own dhcp and ping realisation or keep one from picotcp?
> Should I use DNS from barebox (over picotcp) or picotcp DNS realization?

I assume that the barebox network stack and picotcp will have to
co-exist at least for some time. The barebox network stack will be
smaller than picotcp whereas picotcp offers more features. This means we
have to have a compatible API between both. This means for TFTP, NFS and
DNS it should not matter which network stack is in use, it should work
with both transparently. Since DHCP uses UDP the current barebox
implementation comes for free, so why not keep it for now? We can still
add the picotcp implementation later / let the user select / switch to
picotcp DHCP entirely later. The same with DNS: the barebox
implementation comes for free, so we can keep it around. For ping I
don't really care. Ping uses icmp and also is the only icmp user, so it
might not be worth it to make the barebox/picotcp APIs compatible,
instead we can just use two different implementations of the ping
command based on the network stack in use.

The network stack is a crucial part of barebox. We have to make sure
that we can use both stacks at least until we realize that the picotcp
support is so mature (by mature I mean its integration in barebox, not
the stack itself which for sure is better than what barebox ever had)
and that the size overhead of picotcp is negligible. At that point we
can drop the current barebox network stack.

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
