Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mailout-de.gmx.net ([213.165.64.23])
 by merlin.infradead.org with smtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RoG1D-0002LO-Q5
 for barebox@lists.infradead.org; Fri, 20 Jan 2012 15:04:44 +0000
Message-ID: <4F19827C.5080601@gmx.de>
Date: Fri, 20 Jan 2012 16:04:28 +0100
From: Thomas Mayer <tm.telemotive@gmx.de>
MIME-Version: 1.0
References: <201104261430.01267.roman.fietze@telemotive.de>
 <201104271038.46439.roman.fietze@telemotive.de>
 <4DB7DE8E.6070100@pengutronix.de>
 <201104271232.12931.roman.fietze@telemotive.de>
 <4DB7F14E.1080404@pengutronix.de>
In-Reply-To: <4DB7F14E.1080404@pengutronix.de>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============6971341059935763483=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH] freescale-mx35-3-stack: support 256 MiB RAM
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.
--===============6971341059935763483==
Content-Type: multipart/alternative;
 boundary="------------050102040701060509000100"

This is a multi-part message in MIME format.
--------------050102040701060509000100
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

is there a reason why this patch was never applied?
It works fine for us.

Regards,
Thomas


On 27.04.2011 12:34, Marc Kleine-Budde wrote:
> On 04/27/2011 12:32 PM, Roman Fietze wrote:
>> Hello Marc,
>>
>> On Wednesday, 27.April.2011 11:14:54 Marc Kleine-Budde wrote:
>>
>>> Have a look at the /dev folder, do you have two "/dev/mem*"? If not
>>> you should make the .id unique, i.e. should be "0" here.
>> Barebox' register_device auto increments the ID if it's below zero,
>> and devinfo shows me
> Even better!
>
>> ...
>> |----mem2 (ram0)
>> |----mem3 (ram1)
>> ...
>>
>> "My" code is just borrowed from boards/karo-tx25/board.c. So if it's
>> ambiguous, somebody (Sascha? Me?) should fix that there as well.
> Marc
>
>
>
>
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox


--------------050102040701060509000100
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi,<br>
    <br>
    is there a reason why this patch was never applied?<br>
    It works fine for us.<br>
    <br>
    Regards,<br>
    Thomas<br>
    <br>
    <br>
    On 27.04.2011 12:34, Marc Kleine-Budde wrote:
    <blockquote cite="mid:4DB7F14E.1080404@pengutronix.de" type="cite">
      <pre wrap="">On 04/27/2011 12:32 PM, Roman Fietze wrote:
</pre>
      <blockquote type="cite">
        <pre wrap="">Hello Marc,

On Wednesday, 27.April.2011 11:14:54 Marc Kleine-Budde wrote:

</pre>
        <blockquote type="cite">
          <pre wrap="">Have a look at the /dev folder, do you have two "/dev/mem*"? If not
you should make the .id unique, i.e. should be "0" here.
</pre>
        </blockquote>
        <pre wrap="">
Barebox' register_device auto increments the ID if it's below zero,
and devinfo shows me
</pre>
      </blockquote>
      <pre wrap="">
Even better!

</pre>
      <blockquote type="cite">
        <pre wrap="">
...
|----mem2 (ram0)
|----mem3 (ram1)
...

"My" code is just borrowed from boards/karo-tx25/board.c. So if it's
ambiguous, somebody (Sascha? Me?) should fix that there as well.
</pre>
      </blockquote>
      <pre wrap="">
Marc


</pre>
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

--------------050102040701060509000100--


--===============6971341059935763483==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============6971341059935763483==--
