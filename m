Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22e.google.com ([2a00:1450:400c:c05::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VouPl-0003N9-5z
 for barebox@lists.infradead.org; Fri, 06 Dec 2013 12:21:49 +0000
Received: by mail-wi0-f174.google.com with SMTP id z2so766531wiv.1
 for <barebox@lists.infradead.org>; Fri, 06 Dec 2013 04:21:27 -0800 (PST)
Date: Fri, 6 Dec 2013 13:21:22 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131206122121.GA22571@omega>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
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
To: Atilla Filiz <atilla.filiz@gmail.com>
Cc: barebox@lists.infradead.org

On Fri, Dec 06, 2013 at 01:18:52PM +0100, Atilla Filiz wrote:
> Sorry, figured it out. Just most verbose output is funny as well:
> :/ miitool -vvv /dev/mc13xxx
> 10 Mbit, half duplex, no link
>   registers for MII PHY:
>     0000 0000 0000 0000 0000 0000 0000 0000
>     0000 0000 0000 0000 0000 0000 0000 0000
>     0000 0000 0000 0000 0000 0000 0000 0000
>     0000 0000 0000 0000 0000 0000 0000 0000
>   product info: vendor 00:00:00, model 0 rev 0
>   basic mode:   10 Mbit, half duplex
>   basic status: no link
>   capabilities:
>   advertising:
> 

In my opinion you reading only zeros from bus. Maybe check your muxing
which Sascha already mentioned.

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
