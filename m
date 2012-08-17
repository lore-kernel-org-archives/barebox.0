Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mx2.rafi.de ([178.15.151.13])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1T2MH2-0006t3-RD
 for barebox@lists.infradead.org; Fri, 17 Aug 2012 13:07:39 +0000
MIME-Version: 1.0
Message-ID: <OF8136B6E4.D5217264-ONC1257A5D.004703C5-C1257A5D.00481ACB@o0802.rafi.inhouse>
From: christian.buettner@rafi.de
Date: Fri, 17 Aug 2012 15:07:34 +0200
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: multipart/mixed; boundary="===============9154968188383571519=="
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: tftp server
To: barebox@lists.infradead.org

Dies ist eine mehrteilige Nachricht im MIME-Format.
--===============9154968188383571519==
Content-Type: multipart/alternative; boundary="=_alternative 00481ACBC1257A5D_="

Dies ist eine mehrteilige Nachricht im MIME-Format.
--=_alternative 00481ACBC1257A5D_=
Content-Type: text/plain; charset="US-ASCII"

Hi all,

i implemented an tftp_server for the barebox. My code uses the same 
interfaces like the existing tftp client to
receive and send data per UDP like net_poll() and net_udp_send(..) from 
net.c.
I use atftp tool from a debian host to connect and upload a file to my 
tftp server.

Unfortunately i get a lot of error frames, coming from fec_recv(..) in 
fec_imx.c that look like this:

############error frame: 0x7af05060 0x00000882
###########error frame: 0x7af05048 0x00000802
#error frame: 0x7af05048 0x00000802
#error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
error frame: 0x7af05060 0x00000882
#####error frame: 0x7af05060 0x00000882
#######error frame: 0x7af05060 0x00000882
######error frame: 0x7af05060 0x00000882
#################
        #################################################################
 #################################################################error 
frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802

        ############error frame: 0x7af05060 0x00000882
#####################################################
        #error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
###################error frame: 0x7af05060 0x00000882
###########error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
########################error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
##########
        ##############################################error frame: 
0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
###################
        #######################error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
########error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
error frame: 0x7af05060 0x00000882
error frame: 0x7af05060 0x00000882
##################################
        ##error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
################################error frame: 0x7af05048 0x00000802
error frame: 0x7af05048 0x00000802
###############################
        #################################################################
        ########################################################transfer 
finished


When i use the tftp client (from sascha) to download from the debian host, 
i get no error frames, so the connection should be ok.
Do you have any idea how i can analyze the problem? 

christian

--=_alternative 00481ACBC1257A5D_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hi all,</font>
<br>
<br><font size=2 face="sans-serif">i implemented an tftp_server for the
barebox. My code uses the same interfaces like the existing tftp client
to</font>
<br><font size=2 face="sans-serif">receive and send data per UDP like net_poll()
and net_udp_send(..) from net.c.</font>
<br><font size=2 face="sans-serif">I use atftp tool from a debian host
to connect and upload a file to my tftp server.</font>
<br>
<br><font size=2 face="sans-serif">Unfortunately i get a lot of error frames,
coming from </font><font size=2 face="Sans"><b>fec_recv</b></font><font size=2 face="sans-serif">(..)
in fec_imx.c that look like this:</font>
<br>
<br><font size=2 face="sans-serif">############error frame: 0x7af05060
0x00000882</font>
<br><font size=2 face="sans-serif">###########error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">#error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">#error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">#####error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">#######error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">######error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">#################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; #################################################################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; #################################################################error
frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; ############error
frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">#####################################################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; #error frame:
0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">###################error frame: 0x7af05060
0x00000882</font>
<br><font size=2 face="sans-serif">###########error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">########################error frame:
0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">##########</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; ##############################################error
frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">###################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; #######################error
frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">########error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05060 0x00000882</font>
<br><font size=2 face="sans-serif">##################################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; ##error
frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">################################error
frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">error frame: 0x7af05048 0x00000802</font>
<br><font size=2 face="sans-serif">###############################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; #################################################################</font>
<br><font size=2 face="sans-serif">&nbsp; &nbsp; &nbsp; &nbsp; ########################################################transfer
finished</font>
<br>
<br>
<br><font size=2 face="sans-serif">When i use the tftp client (from sascha)
to download from the debian host, i get no error frames, so the connection
should be ok.</font>
<br><font size=2 face="sans-serif">Do you have any idea how i can analyze
the problem? </font>
<br>
<br><font size=2 face="sans-serif">christian</font>
<br>
--=_alternative 00481ACBC1257A5D_=--


--===============9154968188383571519==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--===============9154968188383571519==--
