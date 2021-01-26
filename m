Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l4Rnn-0006Ym-4n
 for barebox@lists.infradead.org; Tue, 26 Jan 2021 17:06:51 +0000
Received: by mail-ot1-x334.google.com with SMTP id e70so16846069ote.11
 for <barebox@lists.infradead.org>; Tue, 26 Jan 2021 09:06:50 -0800 (PST)
MIME-Version: 1.0
From: "DEMIRDJIAN, Antoine" <antoine.demirdjian@airliquide.com>
Date: Tue, 26 Jan 2021 18:06:13 +0100
Message-ID: <CAEuS4-0HDxrsvQ_2ONfXiLdVn8=xaxR=erz5vtH=km44+HpLTA@mail.gmail.com>
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
Subject: MAC address set in OCOTP but not visible from ETH0 - i.MX6
To: barebox@lists.infradead.org

Dear all,

I'm working on a custom board based on an i.MX6 Dual Lite.
I've set a MAC address on OCOTP, and I can see it :

barebox@Main Board:/ devinfo ocotp0
Parameters:
  mac_addr: 70:82:0e:12:73:6f (type: MAC)
  mac_addr0: 70:82:0e:12:73:6f (type: MAC)
  permanent_write_enable: 0 (type: bool)
  sense_enable: 0 (type: bool)

The issue is that I can't get it from eth0 :

barebox@Chrysalis Main Board:/ devinfo eth0
Parameters:
  ethaddr: 00:00:00:00:00:00 (type: MAC)
  gateway: 192.1.1.100 (type: ipv4)
  ipaddr: 0.0.0.0 (type: ipv4)
  linux.bootargs: ip=0.0.0.0:192.1.1.46:192.1.1.100:255.255.255.0:::
(type: string)
  linux.devname:  (type: string)
  mode: static (type: enum) (values: "dhcp", "static", "disabled")
  netmask: 255.255.255.0 (type: ipv4)
  serverip: 192.1.1.46 (type: string)

My operating system's driver does not see it neither ...

Am I missing something?

Best Regards,
Antoine

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
