Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qe0-x232.google.com ([2607:f8b0:400d:c02::232])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VqNQ0-0007wo-GU
 for barebox@lists.infradead.org; Tue, 10 Dec 2013 13:32:08 +0000
Received: by mail-qe0-f50.google.com with SMTP id 1so4003002qec.23
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2013 05:31:45 -0800 (PST)
MIME-Version: 1.0
In-Reply-To: <20131206124327.GA22853@omega>
References: <CACTZKX4PZ1NKB=4am7hik-w6V+CXApDHbEcAAmp6PakXGK5V0A@mail.gmail.com>
 <20131206145250.ea5fc95adf61aca114babf5b@gmail.com>
 <CACTZKX4Phn_pOkEK5SUAva=dAig9rX3eD=ckzadNM9Ht1bLC7Q@mail.gmail.com>
 <CACTZKX5mv6bjbUoWK81BioH3FEboMtN2jOaRQG3eRLbMg97FXA@mail.gmail.com>
 <20131206123925.GD24559@pengutronix.de> <20131206124327.GA22853@omega>
From: Atilla Filiz <atilla.filiz@gmail.com>
Date: Tue, 10 Dec 2013 14:31:23 +0100
Message-ID: <CACTZKX6kectn-z1NUJFjb=ycM9NTFuVUKmb8xU80k4wbp6DKqA@mail.gmail.com>
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

Ok, then my problem is slightly more clear, that /dev/phy0 does not exist.
I do define a struct fec_platform_data with
xcv_type=PHY_INTERFACE_MODE_MII and register it via imx27_add_fec().

Now I need to find out why it fails to register the device.

On Fri, Dec 6, 2013 at 1:43 PM, Alexander Aring <alex.aring@gmail.com> wrote:
> On Fri, Dec 06, 2013 at 01:39:25PM +0100, Sascha Hauer wrote:
>> On Fri, Dec 06, 2013 at 01:18:52PM +0100, Atilla Filiz wrote:
>> > Sorry, figured it out. Just most verbose output is funny as well:
>> > :/ miitool -vvv /dev/mc13xxx
>>
>> Don't know what miitool does in this case, but mc13xxx is not your phy,
>> it's your PMIC.
>>
>
> oh, doesn't realize that :D. So reading zeros can make sense in some
> offset. :-)
>
> - Alex



-- 
Atilla Filiz

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
