Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vsmx011.vodafonemail.xion.oxcs.net ([153.92.174.89])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k8k1n-0000SP-TI
 for barebox@lists.infradead.org; Thu, 20 Aug 2020 12:50:48 +0000
Date: Thu, 20 Aug 2020 14:50:40 +0200 (CEST)
From: Giorgio Dal Molin <giorgio.nicole@arcor.de>
Message-ID: <670188591.8565.1597927841179@mail.vodafone.de>
In-Reply-To: <15d59a58-4c45-c83f-cb96-17b2d3bc4c93@pengutronix.de>
References: <1196968959.8187.1597925911899@mail.vodafone.de>
 <3254031d-0a9d-42c5-2e26-b41095d52227@pengutronix.de>
 <1964884639.8285.1597926404532@mail.vodafone.de>
 <15d59a58-4c45-c83f-cb96-17b2d3bc4c93@pengutronix.de>
MIME-Version: 1.0
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
Subject: Re: NULL pointer deref crash on barebox 2020.08.0
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org


> On August 20, 2020 at 2:28 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
> 
> 
> Hello,
> 
> On 8/20/20 2:26 PM, Giorgio Dal Molin wrote:
> >> What kind of file system is mounted at /mnt/boot?
> >>
> > 
> > Hi
> > 
> > it's a squashfs:
> 
> Do you have Sascha's "squashfs: Fix current master" series applied?
> https://lists.infradead.org/pipermail/barebox/2020-August/033488.html
> 
Hi,

are these commits already visible in git://git.pengutronix.de/git/barebox.git

I cannot find them.

giorgio

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
