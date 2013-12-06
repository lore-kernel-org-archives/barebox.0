Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x235.google.com ([2a00:1450:400c:c00::235])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VouTx-0003Ta-Qk
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:26:10 +0000
Received: by mail-wg0-f53.google.com with SMTP id k14so565303wgh.20
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 04:25:47 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
From: Atilla Filiz <atilla.filiz@gmail.com>
Date: Fri, 6 Dec 2013 13:17:18 +0100
Message-ID: <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
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

On Fri, Dec 6, 2013 at 11:52 AM, Antony Pavlov <antonynpavlov@gmail.com> wrote:
> There is miitool command to view MII status / registers.


How do I use it?
barebox@Terminal:/ miitool -v /dev/mc13xxx
10 Mbit, half duplex, no link
  product info: vendor 00:00:00, model 0 rev 0
  basic mode:   10 Mbit, half duplex
  basic status: no link
  capabilities:
  advertising:
barebox@Terminal:/ dhcp
T DHCP client bound to address 10.3.4.161
barebox@Terminal:/ miitool -v /dev/mc13xxx
10 Mbit, half duplex, no link
  product info: vendor 00:00:00, model 0 rev 0
  basic mode:   10 Mbit, half duplex
  basic status: no link
  capabilities:
  advertising:

But there is link, obviously.
-- 
Atilla Filiz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
