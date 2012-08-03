Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-yx0-f177.google.com ([209.85.213.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SxGsL-0004li-6e
 for barebox@lists.infradead.org; Fri, 03 Aug 2012 12:21:05 +0000
Received: by yenr9 with SMTP id r9so822854yen.36
 for <barebox@lists.infradead.org>; Fri, 03 Aug 2012 05:21:02 -0700 (PDT)
From: "Marc Reilly" <marc@cpdesign.com.au>
References: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
In-Reply-To: <OF95E0712B.359A103D-ONC1257A4F.002B3A1C-C1257A4F.002C899A@o0802.rafi.inhouse>
Date: Fri, 3 Aug 2012 22:20:58 +1000
Message-ID: <000001cd7172$744769a0$5cd63ce0$@cpdesign.com.au>
MIME-Version: 1.0
Content-Language: en-au
Reply-To: marc@cpdesign.com.au
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: RE: boot init code depending on i2c eeprom value
To: christian.buettner@rafi.de, barebox@lists.infradead.org

Hi,

>i need to set the pin-mux of the board init code depending on an ID coming
from 
>an i2C EEPROM of the board. 
>Is it possible to do something like this: 

>postcore_initcall(ecuv6_postcore_init); 
> console_initcall(ecuv6_console_init); 
>Actually this is not working. The i2c_imx:i2c_imx_probe(..) function gets
called later. 
>Is there a way or concept to do something like this? 

Do it (all) in a device_initcall() function?

Cheers,
Marc




_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
