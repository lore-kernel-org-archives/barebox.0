Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-x22e.google.com ([2607:f8b0:400d:c01::22e])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqgGs-0004b8-Ur
 for barebox@lists.infradead.org; Wed, 11 Dec 2013 09:40:07 +0000
Received: by mail-qc0-f174.google.com with SMTP id n7so4899315qcx.33
 for <barebox@lists.infradead.org>; Wed, 11 Dec 2013 01:39:37 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131210174536.GA7305@omega>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de> <20131206124327.GA22853@omega>
 <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
 <20131210192440.cbffc0bed7dd71d3f0e36f79@gmail.com>
 <20131210174536.GA7305@omega>
From: Atilla Filiz <atilla.filiz@gmail.com>
Date: Wed, 11 Dec 2013 10:39:17 +0100
Message-ID: <CACTZKX7=ycyAhZxHsJ7k6K23HmMOsuYUVFYV8JFFmhr5=g8vyg@mail.gmail.com>
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
To: Alexander Aring <alex.aring@gmail.com>
Cc: barebox@lists.infradead.org

My problem is, /dev/phy0 never appears when I give the correct phy address.

Unable to find a PHY (unknown ID?)
dhcp failed: I/O error
dhcp: I/O error

Also, fec_probe function for fec_imx driver never gets called.
Ironically, I do not get an I/O error when I give the wrong phy
address. Still nothing gets detected and no device node appears, but
ethernet works(by forcing the line detect functions to return 0).


I will talk to the hardware guys to verify the pin muxing and phy address.

On Tue, Dec 10, 2013 at 6:46 PM, Alexander Aring <alex.aring@gmail.com> wrote:
> On Tue, Dec 10, 2013 at 07:24:40PM +0400, Antony Pavlov wrote:
>> On Tue, 10 Dec 2013 14:31:23 +0100
>> Atilla Filiz <atilla.filiz@gmail.com> wrote:
>>
>> > Ok, then my problem is slightly more clear, that /dev/phy0 does not exist.
>> > I do define a struct fec_platform_data with
>> > xcv_type=PHY_INTERFACE_MODE_MII and register it via imx27_add_fec().
>> >
>> > Now I need to find out why it fails to register the device.
>>
>> There is issue with current barebox.
>>
>> The /dev/phy0 device is unavailable till you use network.
>> You can use this (ugly!) way
>>   So just after boot type 'dhcp', next type 'ctrl-c' to interrupt dhcp and check /dev/phy0 presence.
>>
> mh, bad... :( Maybe just try a ping instead of dhcp to bring /dev/phy0
> alive. But that's a ugly hack, too.
>
> Is there no some global(var/env) to enable it?
>
> - Alex



-- 
Atilla Filiz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
