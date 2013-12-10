Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22a.google.com ([2a00:1450:400c:c00::22a])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqROI-00081M-9D
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 17:46:38 +0000
Received: by mail-wg0-f42.google.com with SMTP id a1so4967236wgh.3
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 09:46:15 -0800 (PST)
Date: Tue, 10 Dec 2013 18:46:09 +0100
From: Alexander Aring <alex.aring@gmail.com>
Message-ID: <20131210174536.GA7305@omega>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de>
 <20131206124327.GA22853@omega>
 <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
 <20131210192440.cbffc0bed7dd71d3f0e36f79@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20131210192440.cbffc0bed7dd71d3f0e36f79@gmail.com>
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

On Tue, Dec 10, 2013 at 07:24:40PM +0400, Antony Pavlov wrote:
> On Tue, 10 Dec 2013 14:31:23 +0100
> Atilla Filiz <atilla.filiz@gmail.com> wrote:
> 
> > Ok, then my problem is slightly more clear, that /dev/phy0 does not exist.
> > I do define a struct fec_platform_data with
> > xcv_type=PHY_INTERFACE_MODE_MII and register it via imx27_add_fec().
> > 
> > Now I need to find out why it fails to register the device.
> 
> There is issue with current barebox.
> 
> The /dev/phy0 device is unavailable till you use network.
> You can use this (ugly!) way
>   So just after boot type 'dhcp', next type 'ctrl-c' to interrupt dhcp and check /dev/phy0 presence.
> 
mh, bad... :( Maybe just try a ping instead of dhcp to bring /dev/phy0
alive. But that's a ugly hack, too.

Is there no some global(var/env) to enable it?

- Alex

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
