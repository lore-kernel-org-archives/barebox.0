Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f176.google.com ([209.85.217.176])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WpCBh-0002gd-0p
 for barebox@lists.infradead.org; Tue, 27 May 2014 07:52:45 +0000
Received: by mail-lb0-f176.google.com with SMTP id p9so4616090lbv.7
 for <barebox@lists.infradead.org>; Tue, 27 May 2014 00:52:19 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20140527053045.GL15686@pengutronix.de>
References: <20140525135819.ebfd62810f698e8f13dbf558@gmail.com>
 <1401097557.4829.20.camel@weser.hi.pengutronix.de>
 <20140526160933.db2250dd20bc4c385d56c747@gmail.com>
 <20140527053045.GL15686@pengutronix.de>
Date: Tue, 27 May 2014 09:52:19 +0200
Message-ID: <CAOngqVWxceLR+LZj4zKW_AQgaQYmQjVdVYFw+c1L_EEQYaAxtQ@mail.gmail.com>
From: Daniele Lacamera <daniele.lacamera@tass.be>
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
Subject: Re: [RFC] [WIP] incorporate picotcp into barebox: a small demo
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Kristof Roelants <kristof.roelants@tass.be>, barebox <barebox@lists.infradead.org>, Daniele Lacamera <mlists@danielinux.net>, Sam Van Den Berge <sam.van.den.berge@tass.be>

On Tue, May 27, 2014 at 7:30 AM, Sascha Hauer <s.hauer@pengutronix.de> wrote:

>> 3. ipv6
>>
>>    Current IPv4 address space is near totaly exhausted
>>    (see https://www.icann.org/news/announcement-2-2014-05-20-en).
>>    I suppose with the lapse of time IPv6 will be used even in bootloaders :)
>>    picotcp gives you IPv6 just now.
>
> These features sound very nice. I hope we can get the binary size
> impacts within sensible limits. Is it possible to disable TCP support in
> picotcp?
>

Yes, you can disable each single component. E.g., to compile TCP out,
use TCP=0, or just leave PICO_SUPPORT_TCP out. Some binary size
figures for picotcp (compiled for arm, with -Os, symbols stripped):

    1433      pico_arp.o (ex ./build/lib/libpicotcp.a)
    1715      pico_dev_loop.o (ex ./build/lib/libpicotcp.a)
    2956      pico_dhcp_client.o (ex ./build/lib/libpicotcp.a)
     284      pico_dhcp_common.o (ex ./build/lib/libpicotcp.a)
    1152      pico_dhcp_server.o (ex ./build/lib/libpicotcp.a)
    2340      pico_dns_client.o (ex ./build/lib/libpicotcp.a)
    1170      pico_icmp4.o (ex ./build/lib/libpicotcp.a)
    1897      pico_icmp6.o (ex ./build/lib/libpicotcp.a)
    3624      pico_igmp.o (ex ./build/lib/libpicotcp.a)
     660      pico_ipfilter.o (ex ./build/lib/libpicotcp.a)
    5560      pico_ipv4.o (ex ./build/lib/libpicotcp.a)
    1216      pico_ipv6_nd.o (ex ./build/lib/libpicotcp.a)
    4089      pico_ipv6.o (ex ./build/lib/libpicotcp.a)
    2476      pico_mdns.o (ex ./build/lib/libpicotcp.a)
    1428      pico_nat.o (ex ./build/lib/libpicotcp.a)
    3294      pico_olsr.o (ex ./build/lib/libpicotcp.a)
     612      pico_slaacv4.o (ex ./build/lib/libpicotcp.a)
     928      pico_sntp_client.o (ex ./build/lib/libpicotcp.a)
     766      pico_socket_tcp.o (ex ./build/lib/libpicotcp.a)
     644      pico_socket_udp.o (ex ./build/lib/libpicotcp.a)
   10542      pico_tcp.o (ex ./build/lib/libpicotcp.a)
     684      pico_udp.o (ex ./build/lib/libpicotcp.a)
    1375      pico_device.o (ex ./build/lib/libpicotcp.a)
     434      pico_frame.o (ex ./build/lib/libpicotcp.a)
     601      pico_protocol.o (ex ./build/lib/libpicotcp.a)
    2636      pico_socket_multicast.o (ex ./build/lib/libpicotcp.a)
    5018      pico_socket.o (ex ./build/lib/libpicotcp.a)
    3079      pico_stack.o (ex ./build/lib/libpicotcp.a)
    1188      pico_tree.o (ex ./build/lib/libpicotcp.a)
   63801      (TOTALS)

/d

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
