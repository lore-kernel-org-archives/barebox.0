Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKf2G-0004ex-01
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 08:52:01 +0000
References: <CAEp+FuCjbdBi8JKEg_pesy-9OeDYzKh7zJFQRDqQqYqws=XBUg@mail.gmail.com>
 <20191011072110.dgtegrdzkojwco3u@pengutronix.de>
 <CAEp+FuAi6+cUSxk0pXVOpKoE=GPCxU9QubzdDdgcLP9hvMzcbg@mail.gmail.com>
 <CAEp+FuCHiycZ-LSfVkcUSN5Nv+Bj0X8==0UkJjP9ET+udnv8sQ@mail.gmail.com>
 <CAEp+FuBNZ5v3fVHAW8zWCGTaQJLZo0PyW=narnvG8z_7Lw=MjQ@mail.gmail.com>
 <bf21c116-8293-1773-6271-f066be5fd477@pengutronix.de>
 <CAEp+FuB2AgbWW0OYh3zaiJsej1Gzo12Vat+YTK+w2j=RBvDLhA@mail.gmail.com>
 <1ff22443-e9c4-980f-d40e-5a0478783f11@pengutronix.de>
 <CAEp+FuCp_cc7s8uiYzd-pm+cAZruBkPOzQem1CURiAJiW6J+cQ@mail.gmail.com>
 <CAEp+FuD_FCJzSMwtpDPrtDiC=94mAsshRkkmCP_-4zSVbMKJ=A@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <b551c3aa-9d77-cbc4-e429-f6746269b24f@pengutronix.de>
Date: Wed, 16 Oct 2019 10:51:56 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuD_FCJzSMwtpDPrtDiC=94mAsshRkkmCP_-4zSVbMKJ=A@mail.gmail.com>
Content-Language: en-US
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
Subject: Re: MFGTools from NXP
To: Mihaita Ivascu <mihaita_ivascu@trimble.com>
Cc: barebox@lists.infradead.org

On 10/16/19 10:40 AM, Mihaita Ivascu wrote:
> Hello again,
> 
>    I have the target in otg peripheral mode, ADB and fastboot drivers
> installed but fastboot does not list any device. The board is detected
> in device manager

Try enabling the ACM gadget in barebox and connect with PuTTY and see if
at least that works. It worked for me on Windows with another i.MX board
a month ago.

As for fastboot, I don't know how to configure it on Windows, but surely
Android Modding boards will have you covered there.

>    Please see attachment. Any ideas how should I proceed? Thanks for
> the support.

You can enable the ACM gadget in barebox and see if that works, I tested
it on Windows with an i.MX board a month ago

Cheers
Ahmad

> 
> Thanks,
>       Mihaita
> 
> On Wed, Oct 16, 2019 at 9:32 AM Mihaita Ivascu
> <mihaita_ivascu@trimble.com> wrote:
>>
>> Thanks. I have installed ADB and fastboot drivers for Win from
>> https://www.getdroidtips.com/how-to-install-adb-and-fastboot-on-windows/
>> I have installed according to the attachment.
>> But is not recognized in Windows. I did reboot the system after
>> installation but did not add any new env variable.
>>
>> H:\>fastboot devices -l
>> 'fastboot' is not recognized as an internal or external command,
>> operable program or batch file.
>>
>> Thanks,
>>       Mihaita
>>
>>
>> On Tue, Oct 15, 2019 at 4:44 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>
>>> On 10/15/19 4:41 PM, Mihaita Ivascu wrote:
>>>> barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ fastboot devices -l
>>> That's what you run on your host system, not on the target.
>>> --
>>> Pengutronix e.K.                           |                             |
>>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
