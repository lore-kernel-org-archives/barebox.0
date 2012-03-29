Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-qc0-f177.google.com ([209.85.216.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SDFck-0004TA-SR
 for barebox@lists.infradead.org; Thu, 29 Mar 2012 13:42:47 +0000
Received: by qcsu28 with SMTP id u28so1544070qcs.36
 for <barebox@lists.infradead.org>; Thu, 29 Mar 2012 06:42:45 -0700 (PDT)
MIME-Version: 1.0
In-Reply-To: <20120329150143.0ce2ddf0@eb-e6520>
References: <OF440839EF.2383F590-ONC12579D0.00410F43-C12579D0.004184D1@o0802.rafi.inhouse>
 <20120329140303.71c94361@eb-e6520>
 <OF21220E76.68770C91-ONC12579D0.004452DB-C12579D0.0044D7C4@o0802.rafi.inhouse>
 <CAB_54W4aZA1W0yGMtboW-F0CLmfx4et2XNEjExdFdZUE_g4a+g@mail.gmail.com>
 <OFADF64A2E.4C13BEDA-ONC12579D0.0047261C-C12579D0.004752BF@o0802.rafi.inhouse>
 <20120329150143.0ce2ddf0@eb-e6520>
Date: Thu, 29 Mar 2012 15:42:45 +0200
Message-ID: <CAJfOKByg6f6noOPxg6tDLuNy1XUZ1Nw0-A6U9niUeEJVHWDyhw@mail.gmail.com>
From: Franck Jullien <franck.jullien@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: Create NAND Partition through barebox
To: barebox <barebox@lists.infradead.org>

2012/3/29 Eric B=E9nard <eric@eukrea.com>:
> Le Thu, 29 Mar 2012 14:59:07 +0200,
> christian.buettner@rafi.de a =E9crit :
>> I have an addpart tool as you can see but i cannot create a partition. In
>> the /dev folder is also no /dev/nand0
>>
> did you register the nand device ? Is it detected by barebox ?
>
> I think you should check your board support file against a board
> suppporting nand (you can for example check our cpuimx51 platform which
> is not far from an i.MX53 one).
>
> Eric
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox

Hi,

Did you enable the NAND support (in the menuconfig) ?

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
