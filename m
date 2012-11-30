Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from exprod5og113.obsmtp.com ([64.18.0.26])
 by merlin.infradead.org with smtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TeTPW-0002hC-AM
 for barebox@lists.infradead.org; Fri, 30 Nov 2012 16:25:55 +0000
Message-ID: <50B8DE02.1030209@ge.com>
Date: Fri, 30 Nov 2012 16:25:38 +0000
From: Renaud Barbier <renaud.barbier@ge.com>
MIME-Version: 1.0
References: <CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com>
In-Reply-To: <CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============0142557661079074533=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: How to read a file in UBIFS file system from barebox
To: Madhu koriginja <madhava.koriginja@gmail.com>
Cc: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============0142557661079074533==
Content-Type: multipart/alternative;
 boundary="------------080208000505010507090709"

This is a multi-part message in MIME format.
--------------080208000505010507090709
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 30/11/2012 14:00, Madhu koriginja wrote:
> Hi All,
>             I am using UBIFS file system. My kernel is placed in the 
> file system (/boot/uImage). I want to read the kernel(uImage) from 
> UBIFS file system at barebox to load the kernel and boot it.
> Please give me some ideas how to get this functionality.
>
I have ported UBIFS from U-boot.
I can send patches.

zlib compression is commented out and the code is almost as is from U-boot.

> Advance thanks,
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


--------------080208000505010507090709
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 30/11/2012 14:00, Madhu koriginja
      wrote:<br>
    </div>
    <blockquote
cite="mid:CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com"
      type="cite">Hi All,
      <div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; I am using UBIFS file system. My kernel is placed
        in the file system (/boot/uImage). I want to read the
        kernel(uImage) from UBIFS file system at barebox to load the
        kernel and boot it.&nbsp;</div>
      <div>Please give me some ideas how to get this functionality.</div>
      <div><br>
      </div>
    </blockquote>
    I have ported UBIFS from U-boot.<br>
    I can send patches. <br>
    <br>
    zlib compression is commented out and the code is almost as is from
    U-boot.<br>
    <br>
    <blockquote
cite="mid:CA+pW49qF1gN6Ty=T44MJzCXkmfwhJC0Lj72-zG+ng=mvX7VRgw@mail.gmail.com"
      type="cite">
      <div>Advance thanks,</div>
      <div><br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
      <pre wrap="">_______________________________________________
barebox mailing list
<a class="moz-txt-link-abbreviated" href="mailto:barebox@lists.infradead.org">barebox@lists.infradead.org</a>
<a class="moz-txt-link-freetext" href="http://lists.infradead.org/mailman/listinfo/barebox">http://lists.infradead.org/mailman/listinfo/barebox</a>
</pre>
    </blockquote>
    <br>
  </body>
</html>

--------------080208000505010507090709--


--===============0142557661079074533==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============0142557661079074533==--
