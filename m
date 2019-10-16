Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKfZq-0004Go-U5
 for barebox@lists.infradead.org; Wed, 16 Oct 2019 09:26:44 +0000
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
 <b551c3aa-9d77-cbc4-e429-f6746269b24f@pengutronix.de>
 <CAEp+FuDM3y9gvc1qN74A5Fg5VVHU2-qx_apWFrcSXX1s1SbxnQ@mail.gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <5d57ecff-6a4b-fb9e-b02d-88a730bb92b8@pengutronix.de>
Date: Wed, 16 Oct 2019 11:26:41 +0200
MIME-Version: 1.0
In-Reply-To: <CAEp+FuDM3y9gvc1qN74A5Fg5VVHU2-qx_apWFrcSXX1s1SbxnQ@mail.gmail.com>
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

On 10/16/19 11:21 AM, Mihaita Ivascu wrote:
> Hello,
> 
>    Thanks for your answer. Yes i am able to connect via PUTTY to the target.
>    Then I should use some adb commands in order to push the new
> barebox/firmware ? do you know where I could find some examples?

fastboot device -l works normally on Linux. You need to check what you need
to do on Windows to do the same. You should only need the Fastboot utility
for this.

> 
>    Also I have a question: purpose of this activity is for me to be
> able to flash some imx6ul boards that have no firmware: no barebox.
>    So I know hardware config for the port is otg mode but as I have no
> barebox running them before I am wondering if I will be able to
> connect via PUTTY if I do not set the ACM gadget from barebox?

Check the Embest MarS board's environment in barebox master. It sets up
a fastboot gadget automatically on boot from imx-usb-loader.
You can adjust it to your liking.

Cheers
Ahmad

> 
> Thanks,
>       Mihaita
> 
> On Wed, Oct 16, 2019 at 10:51 AM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>
>> On 10/16/19 10:40 AM, Mihaita Ivascu wrote:
>>> Hello again,
>>>
>>>    I have the target in otg peripheral mode, ADB and fastboot drivers
>>> installed but fastboot does not list any device. The board is detected
>>> in device manager
>>
>> Try enabling the ACM gadget in barebox and connect with PuTTY and see if
>> at least that works. It worked for me on Windows with another i.MX board
>> a month ago.
>>
>> As for fastboot, I don't know how to configure it on Windows, but surely
>> Android Modding boards will have you covered there.
>>
>>>    Please see attachment. Any ideas how should I proceed? Thanks for
>>> the support.
>>
>> You can enable the ACM gadget in barebox and see if that works, I tested
>> it on Windows with an i.MX board a month ago
>>
>> Cheers
>> Ahmad
>>
>>>
>>> Thanks,
>>>       Mihaita
>>>
>>> On Wed, Oct 16, 2019 at 9:32 AM Mihaita Ivascu
>>> <mihaita_ivascu@trimble.com> wrote:
>>>>
>>>> Thanks. I have installed ADB and fastboot drivers for Win from
>>>> https://www.getdroidtips.com/how-to-install-adb-and-fastboot-on-windows/
>>>> I have installed according to the attachment.
>>>> But is not recognized in Windows. I did reboot the system after
>>>> installation but did not add any new env variable.
>>>>
>>>> H:\>fastboot devices -l
>>>> 'fastboot' is not recognized as an internal or external command,
>>>> operable program or batch file.
>>>>
>>>> Thanks,
>>>>       Mihaita
>>>>
>>>>
>>>> On Tue, Oct 15, 2019 at 4:44 PM Ahmad Fatoum <a.fatoum@pengutronix.de> wrote:
>>>>>
>>>>> On 10/15/19 4:41 PM, Mihaita Ivascu wrote:
>>>>>> barebox@Phytec phyCORE-i.MX6 Ultra Lite SOM:/ fastboot devices -l
>>>>> That's what you run on your host system, not on the target.
>>>>> --
>>>>> Pengutronix e.K.                           |                             |
>>>>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>>>>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>>>>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
>>
>>
>> --
>> Pengutronix e.K.                           |                             |
>> Industrial Linux Solutions                 | http://www.pengutronix.de/  |
>> Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
>> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 


-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
