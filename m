Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtprelay0124.hostedemail.com ([216.40.44.124]
 helo=smtprelay.hostedemail.com)
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cWSOp-0000EA-IT
 for barebox@lists.infradead.org; Wed, 25 Jan 2017 18:34:30 +0000
References: <CACmkAZGnw=pCsaRQ9RRa2kBoUEDbEHzV6QJpii6Q+e25VrW02Q@mail.gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <5ef12c77-a100-e7ae-f47b-438af3776941@mev.co.uk>
Date: Wed, 25 Jan 2017 18:34:02 +0000
MIME-Version: 1.0
In-Reply-To: <CACmkAZGnw=pCsaRQ9RRa2kBoUEDbEHzV6QJpii6Q+e25VrW02Q@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to renew eth0 settings without doing a reset
To: Haris Papadopoulos <haris@amberbox.com>, barebox@lists.infradead.org

On 25/01/17 14:53, Haris Papadopoulos wrote:
> Hi,
>
> I am trying to configure a static ip address for my barebox.
>
> I edit the file /env/network/eth0 and then I do saveenv.
>
> Then I do ifup eth0. There is no ifdown command in barebox.
>
> I noticed that the only way to make the new ip address effective is to
> reset the board. However, I will be doing this process with a script
> or maybe remotely.
>
> Therefore, I would like to make the new address effective without a
> reset. How is that possible?

Have you tried the ifup command's -f option to force it to reconfigure 
the interface?

I'm not sure when that option was added to barebox.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
