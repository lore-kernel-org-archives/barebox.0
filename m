Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x230.google.com ([2a00:1450:400c:c03::230])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VouNb-0003KR-Fd
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:19:36 +0000
Received: by mail-we0-f176.google.com with SMTP id w62so556655wes.21
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 04:19:13 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
From: Atilla Filiz <atilla.filiz@gmail.com>
Date: Fri, 6 Dec 2013 13:18:52 +0100
Message-ID: <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
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
Subject: Re: How to debug Ethernet connectivity
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org

Sorry, figured it out. Just most verbose output is funny as well:
:/ miitool -vvv /dev/mc13xxx
10 Mbit, half duplex, no link
  registers for MII PHY:
    0000 0000 0000 0000 0000 0000 0000 0000
    0000 0000 0000 0000 0000 0000 0000 0000
    0000 0000 0000 0000 0000 0000 0000 0000
    0000 0000 0000 0000 0000 0000 0000 0000
  product info: vendor 00:00:00, model 0 rev 0
  basic mode:   10 Mbit, half duplex
  basic status: no link
  capabilities:
  advertising:

On Fri, Dec 6, 2013 at 1:17 PM, Atilla Filiz <atilla.filiz@gmail.com> wrote:
> On Fri, Dec 6, 2013 at 11:52 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
>> There is miitool command to view MII status / registers.
>
>
> How do I use it?
> barebox@Terminal:/ miitool -v /dev/mc13xxx
> 10 Mbit, half duplex, no link
>   product info: vendor 00:00:00, model 0 rev 0
>   basic mode:   10 Mbit, half duplex
>   basic status: no link
>   capabilities:
>   advertising:
> barebox@Terminal:/ dhcp
> T DHCP client bound to address 10.3.4.161
> barebox@Terminal:/ miitool -v /dev/mc13xxx
> 10 Mbit, half duplex, no link
>   product info: vendor 00:00:00, model 0 rev 0
>   basic mode:   10 Mbit, half duplex
>   basic status: no link
>   capabilities:
>   advertising:
>
> But there is link, obviously.
> --
> Atilla Filiz



-- 
Atilla Filiz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
