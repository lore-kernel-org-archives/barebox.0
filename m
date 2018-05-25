Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x22f.google.com ([2a00:1450:400c:c09::22f])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fM6bx-0007hs-5z
 for barebox@lists.infradead.org; Fri, 25 May 2018 06:54:02 +0000
Received: by mail-wm0-x22f.google.com with SMTP id m129-v6so11564335wmb.3
 for <barebox@lists.infradead.org>; Thu, 24 May 2018 23:53:49 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20180525062545.6n7yqry3lln35rsg@pengutronix.de>
References: <CAGKTrWLu-r7OOFRW-JsbOz64O0jOz0CvJjVvHWzr-UFtVkcntg@mail.gmail.com>
 <20180525062545.6n7yqry3lln35rsg@pengutronix.de>
From: Franz Forstmayr <f.forstmayr@gmail.com>
Date: Fri, 25 May 2018 08:53:47 +0200
Message-ID: <CAGKTrWLsQg-aj011fifSj_JCHmx6tONUuzcCu6x0x8tZHT9Pxw@mail.gmail.com>
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
Subject: Re: [BUG] TFTP: No access to subdirectories
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: barebox@lists.infradead.org

Hi Sascha,

The barebox version is nearly your 2018.04 release, except of 5 minor
patches. I'm able to copy a file from my tftp-server to my sd-card.
After that, booting is fine. Booting is also fine, when i run the
mount command manually before booting. Maybe there's a problem with
timeouts or automount?
tftp server: tftp-hpa 5.2, with remap, with tcpwrappers


Regards
Franz

2018-05-25 8:25 GMT+02:00 Sascha Hauer <s.hauer@pengutronix.de>:
> Hi Franz,
>
> On Thu, May 24, 2018 at 09:26:18AM +0200, Franz Forstmayr wrote:
>> Hi,
>>
>> I just saw this old thread and wanted to ask, if this one has been
>> fixed already? I just ran into a similar/same problem using
>> barebox-2018-04 from the  phytec repository
>> (https://git.phytec.de/barebox/log/?h=v2018.04.0-phy).
>>
>> When i want to boot net the first time, it fails the second time successes.
>
> I have no idea. Normally it should work, though I would have to test on
> that version. can you reproduce it with the 'cp' command rather than
> doing a net boot? Also, which tftp server have you running?
>
> Sascha
>
> --
> Pengutronix e.K.                           |                             |
> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
